`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 13:24:55
// Design Name: 
// Module Name: Mouse_BUS_TB
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


module Mouse_BUS_TB(

    );
    // The Clock Period is 10ns
    parameter clkPeriod = 10;
    // Stores the duration of one Clock pulse - 5ns
    parameter clkPulse = clkPeriod/2;
    
    reg CLK;                     // board clock: 100MHz
    reg RESET;
    wire CLK_MOUSE;
    wire DATA_MOUSE;
    wire [7:0] BUS_ADDR;
    wire [7:0] BUS_DATA;
    reg BUS_WE;
    reg BUS_INTERRUPT_ACK;
    wire BUS_INTERRUPT_RASIE;
    
    reg [7:0] addr;
    
    Mouse_BUS uut(
                .CLK(CLK),                 
                .RESET(RESET),
                .CLK_MOUSE(CLK_MOUSE),
                .DATA_MOUSE(DATA_MOUSE),
                .BUS_DATA(BUS_DATA),
                .BUS_ADDR(BUS_ADDR),          
                .BUS_INTERRUPT_RASIE(BUS_INTERRUPT_RASIE),
                .BUS_INTERRUPT_ACK(BUS_INTERRUPT_ACK),
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
            BUS_WE = 0;
            forever begin 
                #200 addr <= 8'hA0; //0
                #200 addr <= 8'hA1; //1
                #200 addr <= 8'hA2; //2
            end
        end
        
        assign BUS_ADDR = addr;
        
endmodule
