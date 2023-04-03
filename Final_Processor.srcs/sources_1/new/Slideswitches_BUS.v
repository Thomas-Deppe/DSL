`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 11:36:37
// Design Name: 
// Module Name: Slideswitches_BUS
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


module Slideswitches_BUS(
    input CLK,
    input RESET,
    input [7:0] SLIDE_SWITCHES,
    
    inout [7:0] BUS_DATA,
    input [7:0] BUS_ADDR,
    input BUS_WE
    );
    
    parameter [7:0] slideSwitch_baseAddr = 8'hE0;
    
    wire [7:0] slideSwitches;
    assign slideSwitches = SLIDE_SWITCHES;
    
    reg enable; 
    
    //////////////////////////////////
    // Uses try state buffer to read from the slide switches if a READ operation is called.
    always@ (posedge CLK) begin
        if((BUS_ADDR == slideSwitch_baseAddr) & ~BUS_WE)
            enable <= 1'b1;
        else 
            enable <= 1'b0;
    end 
    
    assign BUS_DATA = (enable) ? slideSwitches : 8'hZZ;
    
endmodule
