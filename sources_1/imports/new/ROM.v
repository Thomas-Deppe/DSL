`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2023 09:44:34
// Design Name: 
// Module Name: ROM
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
    initial $readmemh("C:/Users/Thomas Deppe/DSL_Projects/Final_Processor/Final_Processor.srcs/sources_1/new/Mouse_IR_Test.mem", ROM);     
    //single port ram 
    always@(posedge CLK) 
        DATA <= ROM[ADDR];
         
endmodule
