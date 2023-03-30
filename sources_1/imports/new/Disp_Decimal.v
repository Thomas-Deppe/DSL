`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2023 13:09:01
// Design Name: 
// Module Name: Controller
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

module Disp_Decimal(
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
    
    reg [7:0] data_input;
    reg [3:0] dot_input;
    
    wire [7:0] Bus_Data;
    assign Bus_Data = BUS_DATA;
    
    always @(posedge CLK) begin
            if (RESET) begin
                //Reset Values
                data_input <= 8'h00; 
                dot_input <= 4'h00;
            end
            //else if ((BUS_ADDR == seg7_BaseAddr) & ENABLE)    //write a binary value from the bus
            else if (ENABLE) begin 
                case(BUS_ADDR)
                    seg7_BaseAddr: 
                        data_input <= Bus_Data; //Writes the bus data to the 7 segment display
                    seg7_DotAddr:
                        dot_input <= Bus_Data[3:0];
                    default: begin
                        data_input <= data_input;    //otherwise leave as it was before
                        dot_input <= dot_input;
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
    wire [3:0] DecCount1 = data_input[7:4];
    wire [3:0] DecCount2 = 4'b000;
    wire [3:0] DecCount3 = 4'b000;
                                        
    wire [4:0] DecCountAndDOT0;
    wire [4:0] DecCountAndDOT1;
    wire [4:0] DecCountAndDOT2;
    wire [4:0] DecCountAndDOT3;
    
    wire [4:0] MuxOut;
    
    /*Ties each of the counter outputs with a single bit that represents the DOT state */
    
    assign DecCountAndDOT0 = {dot_input[0], DecCount0};
    assign DecCountAndDOT1 = {dot_input[1], DecCount1};
    assign DecCountAndDOT2 = {dot_input[2], DecCount2};
    assign DecCountAndDOT3 = {dot_input[3], DecCount3};
    
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
                .BIN_IN(MuxOut[3:0]),
                .DOT_IN(MuxOut[4]),
                .SEG_SELECT_OUT(SEG_SELECT),
                .HEX_OUT(DEC_OUT)
                );

endmodule
