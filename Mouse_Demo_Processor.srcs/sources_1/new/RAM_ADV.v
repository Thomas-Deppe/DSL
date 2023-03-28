`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2023 09:38:19
// Design Name: 
// Module Name: RAM_ADV
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


module RAM_ADV(
        //standard signals 
        input CLK,  
        //BUS signals  
        inout [7:0] BUS_DATA,  
        input [7:0] BUS_ADDR,  
        input       BUS_WE 
    );
    
    parameter RAMBaseAddr = 0;  
    parameter RAMAddrWidth = 7; // 128 x 8-bits memory
    
    wire [RAMAddrWidth-1:0] decoded_addr;
    wire mem_read;
    reg mem_write;   
    //Tristate 
    wire [7:0] BufferedBusData;  
    reg [7:0] Out;  
    //reg RAMBusWE;   
    //Only place data on the bus if the processor is NOT writing, and it is addressing this memory  
    
    //assign BUS_DATA = (RAMBusWE) ? Out : 8'hZZ; 
    assign mem_read = (decoded_addr & ~BUS_WE);
    assign BUS_DATA = (mem_read) ? Mem[BUS_ADDR[RAMAddrWidth-1:0]] : 8'hZZ; 
    //assign BufferedBusData = BUS_DATA;    
    //Memory  
    reg [7:0] Mem [2**RAMAddrWidth-1:0];  
    // Initialise the memory for data preloading, initialising variables, and declaring constants 
    initial $readmemh("C:/Users/Thomas Deppe/DSL_Projects/Mouse_Demo_Processor/Mouse_Demo_Processor.srcs/sources_1/new/RAM_DEMO.mem", Mem);
    
    ///////////////////////////////
    // ADVANCED RAM - updates the bus address instatiously and stops it reading an address behind
    always @(posedge CLK) begin
            mem_write <= BUS_WE & decoded_addr;
            if (mem_write) begin
                Mem[BUS_ADDR[RAMAddrWidth-1:0]] <= BUS_DATA;
            end
        end
    
    assign decoded_addr = (BUS_ADDR >= RAMBaseAddr) & (BUS_ADDR < RAMBaseAddr + 128);
    
endmodule