`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University Of Edinburgh
// Engineer: s1924558 - Thomas Deppe
// 
// Create Date: 31.01.2023 09:41:26
// Design Name: 
// Module Name: MouseReceiver
// Project Name: Mouse_Interface
// Target Devices: xc7a35t (Basys 3 Board)
// Tool Versions: Vivado 2015.2
// Description: This Module is used to receive indicidual bits from the mouse and return the byte read
//              as well as the associated error code if an error did occur. 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MouseReceiver(
    //Standard Inputs  
    input    RESET,  
    input     CLK,  
    //Mouse IO - CLK  
    input    CLK_MOUSE_IN,  
    //Mouse IO - DATA  
    input    DATA_MOUSE_IN,  
    //Control  
    input    READ_ENABLE,  
    output  [7:0]  BYTE_READ,  
    output  [1:0]  BYTE_ERROR_CODE,  
    output    BYTE_READY
    );
     
     //Defines the 5 states needed for the simple receiver state machine
     parameter IDLE = 3'b000;
     parameter READ_BITS = 3'b001;
     parameter CHECK_PARITY = 3'b010;
     parameter CHECK_STOP_BIT = 3'b011;
     parameter CONF_RECEIVED = 3'b100;
     
     //Defines the duration 
     //parameter TIMEOUT = 50000;
     parameter TIMEOUT = 50000*2;
     
     //////////////////////////////////////////////////////////
     // Clk Mouse delayed to detect clock  edges   
     reg ClkMouseInDly;  
     always@(posedge CLK)   
        ClkMouseInDly <= CLK_MOUSE_IN;    
     //////////////////////////////////////////////////////////  
     //A simple state machine to handle the incoming 11-bit codewords  
     reg [2:0]  Curr_State, Next_State;  
     reg [7:0]  Curr_MSCodeShiftReg, Next_MSCodeShiftReg;  
     reg [3:0]  Curr_BitCounter,  Next_BitCounter;   
     reg [1:0]  Curr_MSCodeStatus, Next_MSCodeStatus;  
     reg [16:0] Curr_TimeoutCounter, Next_TimeoutCounter;
     reg        Curr_ByteReceived, Next_ByteReceived; 
     
    //Sequential logic - all the variables are updated on the positive edge of the clock 
    always@(posedge CLK) begin   
        if(RESET) begin    
            Curr_State   <= 3'b000;    
            Curr_MSCodeShiftReg  <= 8'h00;    
            Curr_BitCounter   <= 0;    
            Curr_ByteReceived  <= 1'b0;    
            Curr_MSCodeStatus   <= 2'b00;    
            Curr_TimeoutCounter  <= 0;   
        end 
        else begin    
            Curr_State <= Next_State;    
            Curr_MSCodeShiftReg <= Next_MSCodeShiftReg;    
            Curr_BitCounter <= Next_BitCounter; 
            Curr_ByteReceived <= Next_ByteReceived;    
            Curr_MSCodeStatus <= Next_MSCodeStatus;    
            Curr_TimeoutCounter <= Next_TimeoutCounter;   
        end
    end
    
    //Combinatorial logic
    always@* begin   
        //defaults to make the State Machine more readable   
        Next_State = Curr_State;   
        Next_MSCodeShiftReg = Curr_MSCodeShiftReg;   
        Next_BitCounter = Curr_BitCounter;   
        Next_ByteReceived = 1'b0;    
        Next_MSCodeStatus = Curr_MSCodeStatus;   
        Next_TimeoutCounter = Curr_TimeoutCounter + 1'b1;     
        //The states   
        case (Curr_State)   
            IDLE: begin        
            //Falling edge of Mouse clock and MouseData is low i.e. start bit        
                if(READ_ENABLE & ClkMouseInDly & ~CLK_MOUSE_IN & ~DATA_MOUSE_IN) begin    
                    Next_State = READ_BITS;    
                    Next_MSCodeStatus = 2'b00;        
                end        
                Next_BitCounter = 0;        
            end                             
            // Read successive byte bits from the mouse here   
            READ_BITS: begin       
                if(Curr_TimeoutCounter == TIMEOUT)  
                    // 1ms timeout    
                    Next_State = IDLE;       
                else if(Curr_BitCounter == 8) begin  
                // if last bit go to parity bit check     
                    Next_State = CHECK_PARITY;    
                    Next_BitCounter = 0;       
                end 
                else if(ClkMouseInDly & ~CLK_MOUSE_IN) begin  
                //Shift Byte bits in 1 by 1   
                    Next_MSCodeShiftReg[6:0] = Curr_MSCodeShiftReg[7:1];    
                    Next_MSCodeShiftReg[7] = DATA_MOUSE_IN;    
                    Next_BitCounter = Curr_BitCounter + 1;    
                    Next_TimeoutCounter = 0;        
                end   
            end 
            //Check Parity Bit   
            CHECK_PARITY:  begin   
            //Falling edge of Mouse clock and MouseData is odd parity         
                if(Curr_TimeoutCounter == TIMEOUT)    
                    Next_State = IDLE;         
                else if(ClkMouseInDly & ~CLK_MOUSE_IN) begin 
                    // Parity bit error and returns the corresponding error code  
                    if(DATA_MOUSE_IN != ~^Curr_MSCodeShiftReg[7:0]) 
                        Next_MSCodeStatus[0] = 1'b1;    
                    Next_BitCounter  = 0;
                    Next_State  = CHECK_STOP_BIT;    
                    Next_TimeoutCounter = 0;    
                end        
            end
            //Detects the Stop bit and set MSCodeStatus [1] accordingly if the stop bit was not received as expected
            CHECK_STOP_BIT: begin
                if(Curr_TimeoutCounter == TIMEOUT)    
                    Next_State = IDLE;
                else if(ClkMouseInDly & ~CLK_MOUSE_IN) begin
                    //Stop bit errror and returns the corresponding error code
                    if(DATA_MOUSE_IN != 1'b1)
                        Next_MSCodeStatus[1] = 1'b1;
                        
                    Next_State  = CONF_RECEIVED;
                    //Next_BitCounter = 0;
                    Next_TimeoutCounter = 0;
                end
            end
            //Confirm that the entire byte has been recieved by setting ByteRecieved to logic high
            CONF_RECEIVED: begin
                if(Curr_TimeoutCounter == TIMEOUT)    
                    Next_State = IDLE;
                else begin 
                    Next_ByteReceived = 1'b1;
                    Next_State = IDLE;
                end
            end
            
            default: begin
                Next_State = IDLE;
                Next_MSCodeShiftReg = 8'h00;    
                Next_BitCounter = 0;    
                Next_ByteReceived = 1'b0;    
                Next_MSCodeStatus = 2'b00;    
                Next_TimeoutCounter = 0;
            end
        endcase  
    end
    
    //Assigns the outputs
    assign BYTE_READY = Curr_ByteReceived;
    assign BYTE_READ = Curr_MSCodeShiftReg;
    assign BYTE_ERROR_CODE = Curr_MSCodeStatus;
    
endmodule