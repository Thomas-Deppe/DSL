`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh
// Engineer: s1924558
// 
// Create Date: 17.03.2023 11:41:56
// Design Name: 
// Module Name: Mouse_BUS
// Project Name: Final_Processor
// Target Devices: xc7a35t (Basys 3 Board)
// Tool Versions: Vivado 2015.2
// Description: A mouse bus interface to work with the microproccessor module. If a read command is passed
//              into any of the mouse addresses the data is returned for respective mouse data.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Mouse_BUS(
        //Standard inputs
        input CLK,
        input RESET,
        //IO - Mouse side  
        inout CLK_MOUSE,
        inout DATA_MOUSE,
        //BUS Interface information
        inout [7:0] BUS_DATA,
        inout [7:0] BUS_ADDR,
        output BUS_INTERRUPT_RASIE,
        input BUS_INTERRUPT_ACK,
        input BUS_WE
    );
    
    parameter Mouse_Base_Addr = 8'hA0;
    parameter Addr_Size = 2;
    parameter mem_MouseStatus = 8'hA0;
    parameter mem_MouseX = 8'hA1;
    parameter mem_MouseY = 8'hA2;
    
    wire [3:0] MouseStatus;
    wire [7:0] MouseX;
    wire [7:0] MouseY;
    
    wire send_interrupt;
    
    //Instantiates the mouse transciever module
    MouseTransceiver MT(
                .RESET(RESET),
                .CLK(CLK),
                .CLK_MOUSE(CLK_MOUSE),
                .DATA_MOUSE(DATA_MOUSE),
                .MouseStatus(MouseStatus),
                .MouseX(MouseX),
                .MouseY(MouseY),
                .SEND_INTERRUPT(send_interrupt)
                );
                
    //Broadcast the interrupt to the processor
    reg broad_interrupt;
    
    always@(posedge CLK) begin
        if(RESET)
            broad_interrupt <= 1'b0;
        else if(send_interrupt)
            broad_interrupt <= 1'b1;
        else if(BUS_INTERRUPT_ACK)
            broad_interrupt <= 1'b0;
    end 
    
    assign BUS_INTERRUPT_RASIE = broad_interrupt;
    
    wire [7:0] Bus_Data;
    
    reg [7:0] Data_To_Send;
    reg en_send;
    
    assign Bus_Data = BUS_DATA;
    
    //Checks if bus address is currently trying to read from the mouse.
    wire inAddrRange;
    assign inAddrRange = ((BUS_ADDR >= Mouse_Base_Addr) & (BUS_ADDR < Mouse_Base_Addr + 2**Addr_Size-1)) ? 1'b1 : 1'b0;
    
    always@(posedge CLK) begin 
        if(RESET)
            Data_To_Send <= 8'hZZ;
        else if(inAddrRange) begin
            //Checks that the bus is not trying to write
            if(~BUS_WE) begin
                
                en_send = 1'b1;
                
                case(BUS_ADDR)  
                    //Sends mouse status if address is A0
                    mem_MouseStatus: begin
                        Data_To_Send <= {4'b0, MouseStatus};
                    end 
                    //Sends mouse x if address is A1
                    mem_MouseX:
                        Data_To_Send <= MouseX;
                    //Sends mouse y if address is A2  
                    mem_MouseY: 
                        Data_To_Send <= MouseY;
                    
                    default: Data_To_Send = 8'hZZ;
                    
                endcase
            end 
            else begin 
                en_send = 1'b0;
            end
        end 
        else 
            en_send = 1'b0;
    end 
    
    //Tri state buffer to send the mouse data if enabled
    assign BUS_DATA = (en_send) ? Data_To_Send : 8'hZZ;
               
endmodule
