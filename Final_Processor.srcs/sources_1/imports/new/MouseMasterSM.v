`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh
// Engineer: s1924558 - Thomas Deppe 
// 
// Create Date: 07.02.2023 14:30:28
// Design Name: 
// Module Name: MouseMasterSM
// Project Name: Mouse_interface
// Target Devices: xc7a35t (Basys 3 Board)
// Tool Versions: Vivado 2015.2 
// Description: This module controls all the logic that drives the device-host communication.
//              It defines the handshake protocol that the mouse and host must do before it can start receiving
//              and sending bytes. 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MouseMasterSM(
    //Basic Inputs
    input CLK,   
    input RESET,   
    //Transmitter Control   
    output SEND_BYTE,   
    output [7:0] BYTE_TO_SEND,   
    input BYTE_SENT,   
    //Receiver Control   
    output READ_ENABLE,   
    input [7:0] BYTE_READ,   
    input [1:0] BYTE_ERROR_CODE,   
    input BYTE_READY,   
    //Data Registers   
    output [7:0] MOUSE_DX,   
    output [7:0] MOUSE_DY,   
    output [7:0] MOUSE_STATUS,   
    output SEND_INTERRUPT,
    //Save state for ILA
    output [3:0] MASTER_STATE_CODE
    );
    
    //Defines each of the states in the state machine
    parameter INITIAL = 4'h0;
    parameter SEND_RESET = 4'h1;
    parameter CONF_RESET_SENT = 4'h2;
    parameter REC_ACK = 4'h3;
    parameter MOUSE_SELF_TEST = 4'h4;
    parameter REC_MOUSE_ID = 4'h5;
    parameter EN_REP_MODE = 4'h6;
    parameter CONF_REP_MODE_SENT = 4'h7;
    parameter REC_ACK_REP = 4'h8;
    parameter REC_STATUS = 4'h9;
    parameter REC_DX = 4'hA; 
    parameter REC_DY = 4'hB;
    parameter SEND_INTERRUPT_STATE = 4'hC;
    
    //Defines each of the codes to send to the device as given by the device manual
    parameter RESET_MOUSE = 8'hFF;
    parameter ACK = 8'hFA;
    parameter PASS_SELF_TEST = 8'hAA;
    parameter MOUSE_ID = 8'h00;
    parameter EN_REP = 8'hF4;
    parameter ACK_REP = 8'hF4;
    
    //Defines how long to wait before initialising the mouse
    parameter WAIT_TIME = 10000000;
    
    //////////////////////////////////////////////////////////////  
    // Main state machine - There is a setup sequence  
    //  
    // 1) Send FF -- Reset command,   
    // 2) Read FA -- Mouse Acknowledge,  
    // 2) Read AA -- Self-Test Pass   
    // 3) Read 00 -- Mouse ID  
    // 4) Send F4 -- Start transmitting command,  
    // 5) Read FA -- Mouse Acknowledge,  
    //  
    // If at any time this chain is broken, the SM will restart from  
    // the beginning.  Once it has finished the set-up sequence, the read enable flag
    // is raised.  
    // The host is then ready to read mouse information 3 bytes at a time:  
    // S1) Wait for first read, When it arrives, save it to Status. Goto S2.  
    // S2) Wait for second read, When it arrives, save it to DX. Goto S3.  
    // S3) Wait for third read, When it arrives, save it to DY. Goto S1.  
    //   Send interrupt.    
    //State Control  
    reg [3:0] Curr_State, Next_State;  
    reg [23:0] Curr_Counter, Next_Counter;    
    //Transmitter Control  
    reg Curr_SendByte, Next_SendByte;
    reg [7:0] Curr_ByteToSend, Next_ByteToSend;    
    //Receiver Control  
    reg Curr_ReadEnable, Next_ReadEnable;
    //Data Registers  
    reg [7:0] Curr_Status, Next_Status; 
    reg [7:0] Curr_Dx, Next_Dx;  
    reg [7:0] Curr_Dy, Next_Dy;  
    reg Curr_SendInterrupt, Next_SendInterrupt;
    
    //Sequential logic - all the variables are updated on the positive edge of the clock. 
    always@(posedge CLK) begin   
        if(RESET) begin     
            Curr_State <= 4'h0;     
            Curr_Counter <= 0;     
            Curr_SendByte <= 1'b0;     
            Curr_ByteToSend <= 8'h00;     
            Curr_ReadEnable <= 1'b0;     
            Curr_Status <= 8'h00;     
            Curr_Dx <= 8'h00;     
            Curr_Dy <= 8'h00;     
            Curr_SendInterrupt <= 1'b0;   
        end 
        else begin     
            Curr_State <= Next_State;     
            Curr_Counter <= Next_Counter;     
            Curr_SendByte <= Next_SendByte;     
            Curr_ByteToSend <= Next_ByteToSend;     
            Curr_ReadEnable <= Next_ReadEnable;     
            Curr_Status <= Next_Status;     
            Curr_Dx <= Next_Dx;     
            Curr_Dy <= Next_Dy;     
            Curr_SendInterrupt <= Next_SendInterrupt;   
        end  
    end
    
    //Combinatorial logic 
    always@* begin 
        //Default Values  
        Next_State = Curr_State;   
        Next_Counter = Curr_Counter;   
        Next_SendByte = 1'b0;   
        Next_ByteToSend = Curr_ByteToSend;   
        Next_ReadEnable = 1'b0;   
        Next_Status = Curr_Status;   
        Next_Dx = Curr_Dx;   
        Next_Dy = Curr_Dy;   
        Next_SendInterrupt = 1'b0;      
        
        case(Curr_State)     
            //Initialise State - Wait here for 10ms before trying to initialise the mouse.    
            INITIAL: begin
                // 1/100th sec at 50MHz clock
                if(Curr_Counter == WAIT_TIME) begin
                    Next_State = SEND_RESET;         
                    Next_Counter = 0;
                end else
                    Next_Counter = Curr_Counter + 1'b1;     
            end    
            //Start initialisation by sending FF command to the device   
            SEND_RESET: begin       
                Next_State = CONF_RESET_SENT;       
                Next_SendByte = 1'b1;       
                Next_ByteToSend = RESET_MOUSE;    
            end    
            //Wait for confirmation of the byte being sent    
            CONF_RESET_SENT: begin     
                if(BYTE_SENT)        
                    Next_State  = REC_ACK;              
            end    
            //Wait for confirmation of a byte being received    
            //If the byte is FA go to next state, else re-initialise the device.    
            REC_ACK: begin     
                if(BYTE_READY) begin         
                    if((BYTE_READ == ACK) & (BYTE_ERROR_CODE == 2'b00))
                        Next_State = MOUSE_SELF_TEST; 
                    else           
                        Next_State  = INITIAL;                                                      
                end               
                
                Next_ReadEnable = 1'b1;             
            end 
            //Wait for self-test pass confirmation    
            //If the byte received is AA go to next state, else re-initialise the device.    
            MOUSE_SELF_TEST: begin     
                if(BYTE_READY) begin         
                    if((BYTE_READ == PASS_SELF_TEST) & (BYTE_ERROR_CODE == 2'b00))
                        Next_State = REC_MOUSE_ID;                                                        
                    else           
                        Next_State = INITIAL;                                                      
                end      
                
                Next_ReadEnable = 1'b1;           
            end    
            //Wait for confirmation of a byte being received     
            //If the byte is 00 (MOUSE ID) go to next state else re-initialise the device.  
            REC_MOUSE_ID: begin     
                if(BYTE_READY) begin         
                    if((BYTE_READ == MOUSE_ID) & (BYTE_ERROR_CODE == 2'b00))
                        Next_State = EN_REP_MODE;
                    else           
                        Next_State = INITIAL;                                                      
                end                         
                
                Next_ReadEnable = 1'b1;             
            end    
            //Send F4 - to start mouse transmit    
            EN_REP_MODE: begin       
                Next_State = CONF_REP_MODE_SENT;       
                Next_SendByte = 1'b1;       
                Next_ByteToSend = EN_REP;     
            end    
            //Wait for confirmation of the byte being sent    
            CONF_REP_MODE_SENT: 
                if(BYTE_SENT) 
                    Next_State = REC_ACK_REP;       
            //Wait for confirmation of a byte being received    
            //If the byte is F4 goto next state, else re-initialise    
            REC_ACK_REP: begin     
                if(BYTE_READY) begin         
                    if(BYTE_READ == ACK_REP)
                        Next_State = REC_STATUS;                                                        
                    else
                        Next_State  = INITIAL;
                end
                
                Next_ReadEnable = 1'b1;             
            end
               
            ///////////////////////////////////////////////////////////    
            //At this point the SM has initialised the mouse.        
            //Now we are constantly reading.  If at any time       
            //there is an error, we will re-initialise     
            //the mouse - just in case.         
            ///////////////////////////////////////////////////////////        
            //Wait for the confirmation of a byte being received.    
            //This byte will be the first of three, the status byte.    
            //If a byte arrives, but is corrupted, then we re-initialise    
            REC_STATUS: begin        
                if(BYTE_READY) begin
                    if (BYTE_ERROR_CODE == 2'b00) begin             
                        Next_State = REC_DX;              
                        Next_Status = BYTE_READ;
                    end else              
                        Next_State = INITIAL;
                end
                    
                Next_Counter = 0;              
                Next_ReadEnable = 1'b1;          
            end    
            //Wait for confirmation of a byte being received    
            //This byte will be the second of three, the Dx byte.    
            REC_DX: begin
                if(BYTE_READY) begin 
                    if(BYTE_ERROR_CODE == 2'b00) begin            
                        Next_State = REC_DY;              
                        Next_Dx = BYTE_READ;
                    end else              
                        Next_State = INITIAL;
                end
                                
                Next_Counter = 0;              
                Next_ReadEnable = 1'b1;
            end    
            //Wait for confirmation of a byte being received    
            //This byte will be the third of three, the Dy byte.    
            REC_DY: begin
                if(BYTE_READY) begin
                    if(BYTE_ERROR_CODE == 2'b00) begin            
                        Next_State = SEND_INTERRUPT_STATE;              
                        Next_Dy = BYTE_READ;
                    end else              
                        Next_State = INITIAL;
                end
                                
                Next_Counter = 0;              
                Next_ReadEnable = 1'b1;
            end     
            //Send Interrupt State to signal that teh host has read all 3 bytes.   
            SEND_INTERRUPT_STATE: begin     
                Next_State = REC_STATUS;     
                Next_SendInterrupt = 1'b1;               
            end    
            //Default State                 
            default: begin     
                Next_State = 4'h0;     
                Next_Counter = 0;     
                Next_SendByte = 1'b0;     
                Next_ByteToSend = 8'hFF;     
                Next_ReadEnable = 1'b0;     
                Next_Status = 8'h00;     
                Next_Dx = 8'h00;     
                Next_Dy = 8'h00;     
                Next_SendInterrupt = 1'b0;         
            end   
        endcase  
    end
    
    ///////////////////////////////////////////////////  
    //Tie the SM signals to the IO
       
    //Transmitter  
    assign SEND_BYTE  = Curr_SendByte;
    assign BYTE_TO_SEND  = Curr_ByteToSend;
    //Receiver  
    assign READ_ENABLE = Curr_ReadEnable;    
    //Output Mouse Data  
    assign MOUSE_DX = Curr_Dx;  
    assign MOUSE_DY = Curr_Dy;  
    assign MOUSE_STATUS = Curr_Status;  
    assign SEND_INTERRUPT = Curr_SendInterrupt;
    //Outputs the current state used in the ILA debugger
    assign MASTER_STATE_CODE = Curr_State; 
    
endmodule
