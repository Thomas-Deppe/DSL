`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 14:08:48
// Design Name: 
// Module Name: Slideswitches_TB
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


module Slideswitches_TB(

    );
    
    // The Clock Period is 10ns
    parameter clkPeriod = 10;
    // Stores the duration of one Clock pulse - 5ns
    parameter clkPulse = clkPeriod/2;
    
    reg CLK;
    reg RESET;
    reg [7:0] SLIDE_SWITCHES;
    wire [7:0] BUS_DATA;
    reg [7:0] BUS_ADDR;
    reg BUS_WE;
    
    Slideswitches_BUS uut(
                .CLK(CLK),
                .RESET(RESET),
                .SLIDE_SWITCHES(SLIDE_SWITCHES),
                .BUS_DATA(BUS_DATA),
                .BUS_ADDR(BUS_ADDR),
                .BUS_WE(BUS_WE)
                );  
    
    initial begin
        CLK = 0;
        forever #clkPulse CLK <= ~CLK;
    end
    
    initial begin 
        RESET = 1'b1;
        #clkPeriod RESET = 1'b0;
    end 
                    
    initial begin
        SLIDE_SWITCHES = 8'h0;
        forever begin 
            #200 SLIDE_SWITCHES = SLIDE_SWITCHES + 1;
        end
    end
                    
    initial begin
        BUS_ADDR = 0;
        BUS_WE = 0;
        #200 BUS_ADDR <= 8'hE0; 
    end
    
endmodule
