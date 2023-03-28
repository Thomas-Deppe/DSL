`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh
// Engineer: Batu Bayram
// 
// Design Name: 
// Module Name:
// Project Name: VGA_Peripheral

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
    initial $display("ROM is being used");
    initial $readmemh("C:/Users/Hp/OneDrive/Documents/DSD_4_MP/DSD_4_MP.srcs/sources_1/new/ROM.mem", ROM);
    
    //single port ram
    always@(posedge CLK)
        DATA <= ROM[ADDR];
        
endmodule
