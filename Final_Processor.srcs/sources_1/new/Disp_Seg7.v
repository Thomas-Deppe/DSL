`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh
// Engineer: s1924558
// 
// Create Date: 27.01.2023 13:09:01
// Design Name: Final_Proccessor
// Module Name: Disp_Seg7
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Disp_Seg7(
    input CLK,
    input RESET,
    input ENABLE,
    output [3:0] SEG_SELECT,
    output [7:0] DEC_OUT,
    input  [7:0] BUS_DATA,
    input  [7:0] BUS_ADDR
    );
    
    parameter [7:0] seg7_BaseAddr = 8'hD0;
    parameter [7:0] seg7_DotAddr = 8'hD1;
    parameter [7:0] seg7_DispCar = 8'hD2;
    
    reg [7:0] data_input;
    reg [7:0] disp_car;
    reg [3:0] dot_input;
    
    wire [7:0] Bus_Data;
    assign Bus_Data = BUS_DATA;
    
    always @(posedge CLK) begin
            if (RESET) begin
                //Reset Values
                data_input <= 8'h00; 
                disp_car <= 8'h00; 
                dot_input <= 4'h00;
            end
            //else if ((BUS_ADDR == seg7_BaseAddr) & ENABLE)    //write a binary value from the bus
            else if (ENABLE) begin 
                case(BUS_ADDR)
                    seg7_BaseAddr: 
                        data_input <= Bus_Data; //Writes the bus data to the 7 segment display
                    seg7_DotAddr:
                        dot_input <= Bus_Data[3:0]; //Writes a dot to the 7 segment display
                    seg7_DispCar:
                        disp_car <= Bus_Data; //Writes the car data to the 7 segment display
                    default: begin
                        data_input <= data_input;    //otherwise leave as it was before
                        dot_input <= dot_input;
                        disp_car <= disp_car;
                    end 
                endcase
            end
    end
    
    wire Bit17TrigOut;
    wire [16:0] CountOut;
    //The 16 bit counter 
    Generic_counter # (.COUNTER_WIDTH(17),
                       .COUNTER_MAX(99999) 
                       )
                       Bit17Counter (
                       .CLK(CLK),
                       .RESET(1'b0),
                       .ENABLE(1'b1),
                       .TRIG_OUT(Bit17TrigOut),
                       .COUNT(CountOut)
                       );
                       
    wire [1:0] StrobeCount;
    
    //Counter to flick between the 4 segments on the display
    Generic_counter # (.COUNTER_WIDTH(2),
                       .COUNTER_MAX(3)
                       )
                       Bit2Counter (
                       .CLK(CLK),
                       .RESET(1'b0),
                       .ENABLE(Bit17TrigOut),
                       .TRIG_OUT(Bit2Trig),
                       .COUNT(StrobeCount)
                       );
    
    wire [3:0] DecCount0 = data_input[3:0];
    reg [4:0] DecCount1;
    reg [4:0] DecCount2;
    reg [4:0] DecCount3;
    
    //State machine to display the Car and its command on the 7 segment display
    always@(posedge CLK) begin 
        //Displays the car on the seg 7 display
        case(disp_car[7:4])
            //Red Car
            4'b1000: 
                DecCount3 <= 5'b10000;
            //Green Car 
            4'b0100:
                DecCount3 <= 5'b10011;
            //Yellow Car
            4'b0010:
                DecCount3 <= 5'b10001;
            //Blue Car
            4'b0001:
                DecCount3 <= 5'b01011;
                
            default: 
               DecCount3 <= 5'b00000;
        endcase
        
        //Displays the command sent to the car on the 7 segment display
        case(disp_car[3:0])
            //Neutral
            4'b0000: begin
                DecCount1 <= 5'b00000;
                DecCount2 <= 5'b00000;
            end
            //Right
            4'b0001: begin
                DecCount1 <= 5'b00000;
                DecCount2 <= 5'b10000;
            end
            //Left
            4'b0010: begin
                DecCount1 <= 5'b00000;
                DecCount2 <= 5'b10111;
            end
            //Backwards
            4'b0100: begin
                DecCount1 <= 5'b01011;
                DecCount2 <= 5'b00000;
            end    
            4'b0100: begin
                DecCount1 <= 5'b01011;
                DecCount2 <= 5'b00000;  
            end 
            //Forwards
            4'b1000: begin
                DecCount1 <= 5'b01111;
                DecCount2 <= 5'b00000;  
            end
            //Left-Forward
            4'b1010: begin
                DecCount1 <= 5'b01111;
                DecCount2 <= 5'b10111;  
            end
            //Right-Forward
            4'b1001: begin
                DecCount1 <= 5'b01111;
                DecCount2 <= 5'b10000;  
            end
            //Left-Backwards
            4'b0110: begin
                DecCount1 <= 5'b01011;
                DecCount2 <= 5'b10111;  
            end 
            //Right-Backwards
            4'b0101: begin
                DecCount1 <= 5'b01011;
                DecCount2 <= 5'b10000;  
            end             
                                          
            default: begin
               DecCount1 <= 5'b00000;
               DecCount2 <= 5'b00000;
            end    
        endcase        

    end 
    
    wire [4:0] DecCountAndDOT0;
    wire [4:0] DecCountAndDOT1;
    wire [4:0] DecCountAndDOT2;
    wire [4:0] DecCountAndDOT3;
        
    wire [4:0] MuxOut;
        
    /*Ties each of the counter outputs with a single bit that represents the DOT state */
        
    assign DecCountAndDOT0 = {dot_input[0], DecCount0};
    assign DecCountAndDOT1 = DecCount1;
    assign DecCountAndDOT2 = DecCount2;
    assign DecCountAndDOT3 = DecCount3;
    
    //Instantiate multiplexer to choose which segment to display
    Multiplexer_4way Mux4(
                    .CONTROL(StrobeCount),
                    .IN0(DecCountAndDOT0),
                    .IN1(DecCountAndDOT1),
                    .IN2(DecCountAndDOT2),
                    .IN3(DecCountAndDOT3),
                    .OUT(MuxOut)
                    );
                    
    //Instantiate 7 segment decoder to display the output
    seg7decoder Seg7(
                .SEG_SELECT_IN(StrobeCount),
                .BIN_IN(MuxOut),
                .DOT_IN(1'b0),
                .SEG_SELECT_OUT(SEG_SELECT),
                .HEX_OUT(DEC_OUT)
                );

endmodule
