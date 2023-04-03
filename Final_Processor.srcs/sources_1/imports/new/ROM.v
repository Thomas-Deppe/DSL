`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh
// Engineer: s1924558
// 
// Create Date: 07.03.2023 09:44:34
// Design Name: 
// Module Name: ROM
// Project Name: Final_Processor
// Target Devices: xc7a35t (Basys 3 Board)
// Tool Versions: Vivado 2015.2
// Description: A ROM module to read in the machine code from a text file and return this data onto the ROM Bus. 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ROM(
        //standard signals 
        input CLK, 
        //BUS signals 
        output reg [7:0] DATA, 
        input [7:0] ADDR 
    );
    
    parameter RAMAddrWidth = 8; 
    //Memory 
    reg [7:0] ROM [2**RAMAddrWidth-1:0]; 
    // Load program 
    //initial $readmemh("Complete_Demo_ROM.txt", ROM); 
    initial $readmemh("C:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/ROM_COMPLETE.mem", ROM);     
    //single port ram 
    always@(posedge CLK) 
        DATA <= ROM[ADDR];
         
endmodule
