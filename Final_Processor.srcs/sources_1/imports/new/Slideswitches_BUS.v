`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh
// Engineer: s1924558
// 
// Create Date: 17.03.2023 11:41:56
// Design Name: 
// Module Name: Mouse_BUS
// Project Name: Final_Processor
// Target Devices: xc7a35t (Basys 3 Board)
// Tool Versions: Vivado 2015.2
// Description: A slide switch bus interface to work with the microproccessor module. If a read command is passed
//              into any of the slide switch addresses the data is returned for respective slide switches.
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
    input [15:0] SLIDE_SWITCHES,
    
    inout [7:0] BUS_DATA,
    input [7:0] BUS_ADDR,
    input BUS_WE
    );
    
    parameter [7:0] slideSwitch_baseAddr = 8'hE0;
    parameter [7:0] slideSwitch_HighAddr = 8'hE1;
    
    reg [7:0] slideSwitches;
    //assign slideSwitches = SLIDE_SWITCHES;
    
    reg enable; 
    
    //////////////////////////////////
    // Uses try state buffer to read from the slide switches if a READ operation is called.
    always@ (posedge CLK) begin
        if((BUS_ADDR == slideSwitch_baseAddr) & ~BUS_WE) begin
            enable <= 1'b1;
            slideSwitches <= SLIDE_SWITCHES[7:0];
        end
        else if((BUS_ADDR == slideSwitch_HighAddr) & ~BUS_WE) begin
            enable <= 1'b1;
            slideSwitches <= SLIDE_SWITCHES[15:8];
        end 
        else 
            enable <= 1'b0;
    end 
    
    assign BUS_DATA = (enable) ? slideSwitches : 8'hZZ;
    
endmodule
