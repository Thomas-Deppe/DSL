`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 14:08:48
// Design Name: 
// Module Name: LEDS_TB
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


module LEDS_TB(

    );
    
    // The Clock Period is 10ns
    parameter clkPeriod = 10;
    // Stores the duration of one Clock pulse - 5ns
    parameter clkPulse = clkPeriod/2;
    
    reg CLK;
    reg RESET;
    wire [7:0] LEDS;
    wire [7:0] BUS_DATA;
    reg [7:0] BUS_ADDR;
    reg BUS_WE;
    
    reg [7:0] Bus_Data;
    
    LEDS_BUS uut(
                .CLK(CLK),
                .RESET(RESET),
                .LEDS(LEDS),
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
        #100 Bus_Data = 8'h0;
        forever begin 
            #200 Bus_Data = Bus_Data + 1;
        end
    end
    
    assign BUS_DATA = Bus_Data;
                    
    initial begin
        BUS_ADDR = 0;
        BUS_WE = 0;
        #200 BUS_ADDR <= 8'hC0; 
    end
    
endmodule
