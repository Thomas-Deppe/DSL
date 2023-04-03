`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh
// Engineer: s1924558 - Thomas Deppe
// 
// Create Date: 05.02.2023 13:47:31
// Design Name:
// Module Name: MouseTransmitter
// Project Name: Mouse_Interface
// Target Devices: xc7a35t (Basys 3 Board)
// Tool Versions: Vivado 2015.2
// Description: This module takes a byte and sends it bit by bit to the mouse. It drives the hosts communication
//              with the device and controls this by controling the mouse clock and data lines. When these lines
//              are low the device is unable to transmit.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module MouseTransmitter(
    //Standard Inputs
    input RESET,
    input CLK,  
    //Mouse IO - CLK  
    input CLK_MOUSE_IN,
    // Allows for the control of the Clock line
    output CLK_MOUSE_OUT_EN,  
    //Mouse IO - DATA  
    input DATA_MOUSE_IN,
    output DATA_MOUSE_OUT,
    output DATA_MOUSE_OUT_EN,  
    //Control  
    input SEND_BYTE,  
    input [7:0] BYTE_TO_SEND,  
    output BYTE_SENT
    );
    
    //Defines each of the states needed for the state machine
    parameter IDLE = 4'h0;
    parameter CLOCK_LOW = 4'h1;
    parameter DATA_LOW = 4'h2;
    parameter START_SENDING = 4'h3;
    parameter SEND_BITS = 4'h4;
    parameter SEND_PARITY = 4'h5;
    parameter SEND_STOP_BIT = 4'h6;
    parameter RELEASE_DATA = 4'h7;
    parameter WAIT_DATA = 4'h8;
    parameter WAIT_CLOCK = 4'h9;
    parameter WAIT_RELEASE = 4'hA;
    
    //Defines how long the host should bring the clock line low i.e 120us
    parameter WAIT_TIME = 12000;
    
    //////////////////////////////////////////////////////////  
    // Clk Mouse delayed to detect clock edges   
    reg ClkMouseInDly;  
    always@(posedge CLK) 
        ClkMouseInDly <= CLK_MOUSE_IN;
    
    //////////////////////////////////////////////////////////  
    //Now a state machine to control the flow of write data  
    reg [3:0] Curr_State, Next_State;  
    reg Curr_MouseClkOutWE, Next_MouseClkOutWE;  
    reg Curr_MouseDataOut, Next_MouseDataOut;  
    reg Curr_MouseDataOutWE, Next_MouseDataOutWE;  
    reg [15:0] Curr_SendCounter, Next_SendCounter;  
    reg Curr_ByteSent, Next_ByteSent;  
    reg [7:0] Curr_ByteToSend, Next_ByteToSend;
    
    //Sequential logic - all the variables are updated on the positive edge of the clock
    always@(posedge CLK) begin   
        if(RESET) begin    
            Curr_State <= 4'h0;    
            Curr_MouseClkOutWE <= 1'b0;    
            Curr_MouseDataOut <= 1'b0;    
            Curr_MouseDataOutWE <= 1'b0;    
            Curr_SendCounter <= 0;    
            Curr_ByteSent <= 1'b0;    
            Curr_ByteToSend <= 0;   
        end 
        else begin    
            Curr_State <= Next_State;    
            Curr_MouseClkOutWE <= Next_MouseClkOutWE;    
            Curr_MouseDataOut <= Next_MouseDataOut;    
            Curr_MouseDataOutWE <= Next_MouseDataOutWE;     
            Curr_SendCounter <= Next_SendCounter;    
            Curr_ByteSent <= Next_ByteSent;    
            Curr_ByteToSend <= Next_ByteToSend;   
        end
    end 
    
    //Combinational logic
    always@* begin
        //default values   
        Next_State  = Curr_State;   
        Next_MouseClkOutWE = 1'b0;   
        Next_MouseDataOut = 1'b0;   
        Next_MouseDataOutWE = Curr_MouseDataOutWE;
        Next_SendCounter = Curr_SendCounter;   
        Next_ByteSent = 1'b0;   
        Next_ByteToSend = Curr_ByteToSend; 
        
        case(Curr_State)
            //IDLE    
            IDLE: begin       
                if(SEND_BYTE) begin      
                    Next_State = CLOCK_LOW;
                    Next_ByteToSend = BYTE_TO_SEND;       
                end       
                Next_MouseDataOutWE = 1'b0;
            end     
            //Bring Clock line low for at least 120 microsecs i.e. 12000 clock cycles @ 50MHz    
            CLOCK_LOW: begin       
                if(Curr_SendCounter == WAIT_TIME) begin     
                    Next_State = DATA_LOW;     
                    Next_SendCounter = 0;      
                end 
                else     
                    Next_SendCounter = Curr_SendCounter + 1'b1;          
                
                Next_MouseClkOutWE = 1'b1;    
            end     
            //Bring the Data Line Low and release the Clock line    
            DATA_LOW: begin
                Next_State = START_SENDING;     
                Next_MouseDataOutWE = 1'b1;     
            end     
            //Start Sending - Checks that the clock line is bought low   
            START_SENDING:  begin   
                //change data at falling edge of clock, start bit = 0     
                if(ClkMouseInDly & ~CLK_MOUSE_IN)              
                    Next_State = SEND_BITS;
            end
            //Send Bits 0 to 7 - We need to send the byte    
            SEND_BITS:  begin   
                //change data at falling edge of clock
                if(ClkMouseInDly & ~CLK_MOUSE_IN) begin      
                    if(Curr_SendCounter == 7) begin       
                        Next_State = SEND_PARITY;       
                        Next_SendCounter = 0;      
                    end else                                 
                        Next_SendCounter = Curr_SendCounter + 1'b1;
                end
                //Updates the mouse data line to send each bit at a time        
                Next_MouseDataOut = Curr_ByteToSend[Curr_SendCounter];
            end
            //Send the parity bit     
            SEND_PARITY: begin  
                //change data at falling edge of clock
                if(ClkMouseInDly & ~CLK_MOUSE_IN)      
                    Next_State = RELEASE_DATA;
                                
                Next_MouseDataOut = ~^Curr_ByteToSend[7:0];      
             end   
             //Sends the stop bit
            SEND_STOP_BIT: begin 
                if(ClkMouseInDly & ~CLK_MOUSE_IN)
                    Next_State = RELEASE_DATA;
                Next_MouseDataOut = 1'b1;
            end 
             //Release Data line    
             RELEASE_DATA: begin       
                Next_State = WAIT_DATA;
                Next_MouseDataOutWE = 1'b0;      
             end 
             //Wait for Device to bring Data line low
             WAIT_DATA: begin
                if(!DATA_MOUSE_IN)
                    Next_State = WAIT_CLOCK;
             end
             //Wait for Device to bring Clock line low
             WAIT_CLOCK: begin
                //if(ClkMouseInDly & ~CLK_MOUSE_IN)
                if(!CLK_MOUSE_IN)
                    Next_State = WAIT_RELEASE;
             end
             //Finally wait for Device to release both Data and Clock. It signals that the byte has been sent once this happens.
             WAIT_RELEASE: begin 
                if((CLK_MOUSE_IN) & (DATA_MOUSE_IN)) begin
                    Next_State = IDLE;
                    Next_ByteSent = 1'b1;
                end
             end
             
             default :
                Next_State = IDLE;
        endcase  
    end  
     
    ///////////////////////////////////////////////////////////////  
    //Assign OUTPUTs  
    //Mouse IO - CLK  
    assign CLK_MOUSE_OUT_EN = Curr_MouseClkOutWE;    
    //Mouse IO - DATA  
    assign DATA_MOUSE_OUT = Curr_MouseDataOut;  
    assign DATA_MOUSE_OUT_EN = Curr_MouseDataOutWE;    
    //Control  
    assign BYTE_SENT = Curr_ByteSent;
    
endmodule