`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Univeristy of Edinburgh
// Engineer: s1924558
// 
// Create Date: 19.03.2023 12:40:35
// Design Name: 
// Module Name: LEDS_BUS
// Project Name: Final_Processor
// Target Devices: xc7a35t (Basys 3 Board)
// Tool Versions: Vivado 2015.2
// Description: A LED bus interface to work with the microproccessor module. If a store command is passed
//              into any of the LED addresses the data is set on the LEDS.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LEDS_BUS(
    input CLK,
    input RESET,
    output reg [15:0] LEDS,
    inout [7:0] BUS_DATA,
    input [7:0] BUS_ADDR, 
    input BUS_WE
    );
    
    parameter [7:0] LED_baseAddr = 8'hC0;
    parameter [7:0] LED_baseAddrHigh = 8'hC1;
    
    wire [7:0] Bus_Data;
    assign Bus_Data = BUS_DATA;
    
    /////////////////////////////////////
    // Updates the LED values if a write operation is called
    always@ (posedge CLK) begin
        if (RESET)
            LEDS <= 8'h00;
        else begin 
            if (BUS_WE) begin
                if ((BUS_ADDR == LED_baseAddr))
                    LEDS[7:0] <= Bus_Data;
                else if ((BUS_ADDR == LED_baseAddrHigh))
                    LEDS[15:8] <= Bus_Data;
                else 
                    LEDS <= LEDS;
            end 
            else 
                LEDS <= LEDS;
        end 
    end 
    
endmodule
