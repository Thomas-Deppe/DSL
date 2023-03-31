`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh
// Engineer: Batu Bayram
// 
// Design Name: 
// Module Name:
// Project Name: VGA_Peripheral

//////////////////////////////////////////////////////////////////////////////////

module VGA(
    input CLK,                     
    input RESET,
    input [7:0] BUS_ADDR,          
    input [7:0] BUS_DATA,          
    input BUS_WE,                   
    output HS,                  
    output VS,
    // For the testbench
    //output reg [14:0] FB_ADDR,
    //output reg [15:0] CONFIG_COL,
    //output reg FB_DATA_IN,
    output [7:0] COLOUR_OUT        
    );
    
    
    // setup the base addresses
    parameter [7:0] VGABaseAddr  = 8'hB0,
                    VGAXAddr = 8'hB1,
                    VGAYAddr = 8'hB2,
                    VGADataIn = 8'hB3;
    
    wire VGA_Data;
    wire [14:0] B_ADDR;
    wire DPR_CLK;
    wire A_Data_Out;
    
    reg  [15:0] CONFIG_COL;
    reg [14:0] FB_ADDR;
    reg FB_DATA_IN;
    reg FB_WE;
                      
    // Instantiate VGA
    VGA_Sig_Gen vga(
                    //inputs
                    .CLK(CLK),
                    .CONFIG_COL(CONFIG_COL),
                    .VGA_DATA(VGA_Data),
                    
                    //outputs
                    .DPR_CLK(DPR_CLK),     
                    .VGA_ADDR(B_ADDR),
                    .HS(HS),
                    .VS(VS),
                    .COLOUR_OUT(COLOUR_OUT)
                   );
                         
    // Instantiate Frame Buffer
    VGA_Buffer Frame_Buffer(
                    //inputs
                    .A_CLK(CLK),
                    .A_ADDR(FB_ADDR),
                    .A_DATA_IN(FB_DATA_IN),
                    .A_WE(BUS_WE),
                    .B_CLK(DPR_CLK),
                    .B_ADDR(B_ADDR),
                    
                    //outputs
                    .A_DATA_OUT(A_Data_Out),
                    .B_DATA(VGA_Data)
                    );
                    
   //For Address B0, changes colour to BUS_DATA
    always@(posedge CLK) begin
        if (RESET)
            CONFIG_COL <= 0;     
        else if ((BUS_ADDR == VGABaseAddr) & BUS_WE) begin
            CONFIG_COL[15:8] <= BUS_DATA;
            CONFIG_COL[7:0]  <= ~BUS_DATA;
        end
    end
    
    //For Address B1, assigns bus data to X axis address
    always@(posedge CLK) begin
        if (RESET)
            FB_ADDR[7:0] <= 0;
        else if ((BUS_ADDR == VGAXAddr)& BUS_WE)
            FB_ADDR[7:0] <= BUS_DATA;
    end
    
    //For Address B2, assigns bus data to Y axis address
    always@(posedge CLK) begin
        if (RESET)
            FB_ADDR[14:8] <= 0;
        else if ((BUS_ADDR == VGAYAddr)& BUS_WE)
            FB_ADDR[14:8] <= BUS_DATA[6:0];
    end
    
    //Flips on and off the enable for chequered pattern
    always@(posedge CLK) begin
        if (RESET)
            FB_DATA_IN <= 0;
        else if (((BUS_ADDR == VGAXAddr)||(BUS_ADDR == VGAYAddr)) & BUS_WE) begin
            FB_DATA_IN <= 1;
        end
    end
    
    /*always@(posedge CLK) begin
        if (RESET) begin
            FB_DATA_IN <= 0;
            FB_WE <= 1'b0;
        end
        else if ((BUS_ADDR == VGADataIn) & BUS_WE) begin
            FB_DATA_IN <= BUS_DATA[0];
            FB_WE <= 1'b1;
        end
        else begin
            FB_DATA_IN <= FB_DATA_IN;
            FB_WE <= 1'b0;
        end 
    end*/
    
endmodule