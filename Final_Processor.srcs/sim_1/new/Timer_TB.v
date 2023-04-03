`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2023 15:02:03
// Design Name: 
// Module Name: timer_TB
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


module timer_TB(
    );
    // The Clock Period is 10ns
    parameter clkPeriod = 10;
    // Stores the duration of one Clock pulse - 5ns
    parameter clkPulse = clkPeriod/2;
     
    reg CLK;
    reg RESET;
    wire [7:0] BUS_DATA;
    reg  [7:0] BUS_ADDR;
    reg BUS_WE;
    reg BUS_INTERRUPT_ACK;
    wire BUS_INTERRUPT_RAISE;
    
    Timer uut(
        .CLK(CLK),
        .RESET(RESET),
        .BUS_DATA(BUS_DATA),
        .BUS_ADDR(BUS_ADDR),
        .BUS_WE(BUS_WE),
        .BUS_INTERRUPT_RAISE(BUS_INTERRUPT_RAISE),
        .BUS_INTERRUPT_ACK(BUS_INTERRUPT_ACK)
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
    
    initial begin 
        BUS_ADDR = 8'hF0;
    end
       
endmodule
