`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh
// Engineer: Batu Bayram
// 
// Design Name: 
// Module Name:
// Project Name: VGA_Peripheral

//////////////////////////////////////////////////////////////////////////////////


module RAM(
 //standard signals
    input CLK,
    //BUS signals
    inout [7:0] BUS_DATA,
    input [7:0] BUS_ADDR,
    input BUS_WE
    );
    
    parameter RAMBaseAddr = 0;
    parameter RAMAddrWidth = 7; // 128 x 8-bits memory
    
    //Tristate
    wire [7:0] BufferedBusData;
    reg [7:0] Out;
    reg RAMBusWE;
    
    //Only place data on the bus if the processor is NOT writing, and it is addressing this memory
    assign BUS_DATA = (RAMBusWE) ? Out : 8'hZZ;
    assign BufferedBusData = BUS_DATA;
    
    //Memory
    reg [7:0] Mem [2**RAMAddrWidth-1:0];
    
    // Initialise the memory for data preloading, initialising variables, and declaring constants
    initial $display("RAM is being used");
    initial $readmemh("C:/Users/Hp/OneDrive/Documents/DSD_4_MP/DSD_4_MP.srcs/sources_1/new/RAM.mem", Mem);
    
    //single port ram
    always@(posedge CLK) begin
    
        if((BUS_ADDR >= RAMBaseAddr) & (BUS_ADDR < RAMBaseAddr + 128)) begin
            if(BUS_WE) begin
                Mem[BUS_ADDR[6:0]] <= BufferedBusData;
                RAMBusWE <= 1'b0;
            end 
            else
                RAMBusWE <= 1'b1;
        end 
        else
            RAMBusWE <= 1'b0;

        Out <= Mem[BUS_ADDR[6:0]];
        end
         
endmodule
