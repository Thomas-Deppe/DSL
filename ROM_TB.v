`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2023 11:32:57
// Design Name: 
// Module Name: ROM_TB
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


module ROM_TB(

    );
    
    // The Clock Period is 10ns
    parameter clkPeriod = 10;
    // Stores the duration of one Clock pulse - 5ns
    parameter clkPulse = clkPeriod/2;
     
    reg CLK;
    reg  [7:0] BUS_ADDR;
    wire [7:0] BUS_DATA;
    
    ROM uut(
        .CLK(CLK),
        .DATA(BUS_DATA),
        .ADDR(BUS_ADDR)
        );
        
    initial begin
        CLK = 0;
        forever #clkPulse CLK = ~CLK;
    end
        
    initial begin
        BUS_ADDR = 0;
        forever #clkPeriod BUS_ADDR = BUS_ADDR + 1;
    end
    
endmodule
