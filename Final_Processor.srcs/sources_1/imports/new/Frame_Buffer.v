`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh
// Engineer: Batu Bayram
// 
// Design Name: 
// Module Name:
// Project Name: VGA_Peripheral

//////////////////////////////////////////////////////////////////////////////////

module VGA_Buffer(
    //Port A - Read/Write - For Microprocessor or test modules - inputs and outputs
    input A_CLK,
    input [14:0] A_ADDR,
    input A_DATA_IN,
    output reg A_DATA_OUT,
    input A_WE,
    
    //Port B - Read Only - For VGA Display - inputs and outputs
    input B_CLK,
    input [14:0] B_ADDR,
    output reg B_DATA
    );
    
    //1-bit memory to hold frame data corresponding to LSB of X axis and MSB of Y axis
    reg [0:0]Mem[2**15-1:0];
    
    //Port A - Read Write
    always@(posedge A_CLK) begin
        if(A_WE)
            Mem[A_ADDR] <= A_DATA_IN;
        A_DATA_OUT <= Mem[A_ADDR];
    end
    
     // Port B - Read Only
    always@(posedge B_CLK)
        B_DATA <= Mem[B_ADDR];
    
endmodule
