`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2023 17:00:08
// Design Name: 
// Module Name: MouseTransmitter_TB
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

module TopLevel_TB(
    );
    
    // The Clock Period is 10ns
    parameter clkPeriod = 10;
    // Stores the duration of one Clock pulse - 5ns
    parameter clkPulse = clkPeriod/2;
 
    reg RESET;
    reg CLK;
    reg CLK_MOUSE;
    reg DATA_MOUSE;
    reg [15:0] SLIDE_SWITCHES;
    reg [3:0] SEG_SELECT_OUT;
    
    wire [7:0] DISP_OUT;
    wire [7:0] COLOUR_OUT;
    wire [15:0] LEDS;
    wire HS;
    wire VS;
    wire IR_LED;
    
    
    TopLevel uut(
            .CLK(CLK),
            .RESET(RESET),
            .CLK_MOUSE(CLK_MOUSE),
            .DATA_MOUSE(DATA_MOUSE),
            .HS(HS),
            .VS(VS),
            .COLOUR_OUT(COLOUR_OUT),
            .SLIDE_SWITCHES(SLIDE_SWITCHES),
            .SEG_SELECT_OUT(SEG_SELECT_OUT),
            .DISP_OUT(DISP_OUT),
            .LEDS(LEDS),
            .IR_LED(IR_LED)
            );
    
    initial begin
        CLK = 0;
        forever #clkPulse CLK = ~CLK;
    end
        
    initial begin 
        RESET = 1'b1;
        #clkPeriod RESET = 1'b0;
        #1000000;
    end 
    
endmodule
