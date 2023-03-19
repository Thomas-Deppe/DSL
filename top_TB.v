`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2023 17:00:08
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

module top_TB(
    );
    
    // The Clock Period is 10ns
    parameter clkPeriod = 10;
    // Stores the duration of one Clock pulse - 5ns
    parameter clkPulse = clkPeriod/2;
 
    reg RESET;
    reg CLK;
    
    wire DISP_OUT;
    
    TOP uut(
            .CLK(CLK),
            .RESET(RESET),
            .DISP_OUT(DISP_OUT)
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
