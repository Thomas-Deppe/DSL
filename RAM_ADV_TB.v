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


module RAM_ADV_TB(

    );
    
    // The Clock Period is 10ns
    parameter clkPeriod = 10;
    // Stores the duration of one Clock pulse - 5ns
    parameter clkPulse = clkPeriod/2;
     
    reg CLK;
    reg BUS_WE;
    reg  [7:0] BUS_ADDR;
    wire [7:0] BUS_DATA;
    reg Bus_Data;
    
    RAM_ADV uut(
        .CLK(CLK),
        .BUS_DATA(BUS_DATA),
        .BUS_ADDR(BUS_ADDR),
        .BUS_WE(BUS_WE)
        );
        
    initial begin
        CLK = 0;
        forever #clkPulse CLK = ~CLK;
    end
        
    initial begin
        BUS_ADDR = 0;
        BUS_WE = 0;
        forever #clkPeriod BUS_ADDR = BUS_ADDR + 1;
    end
    
    /*initial begin
        BUS_WE = 0;
        Bus_Data = 8'h0;
        #200
        forever begin 
            BUS_WE = ~BUS_WE; 
            #200 Bus_Data = Bus_Data + 1;
        end
        
         assign BUS_DATA = Bus_Data;
    end*/
        
    
endmodule
