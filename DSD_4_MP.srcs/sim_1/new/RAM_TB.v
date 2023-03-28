`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh
// Engineer: Batu Bayram
// 
// Design Name: 
// Module Name:
// Project Name: VGA_Peripheral

//////////////////////////////////////////////////////////////////////////////////


module RAM_TB(

    );
    //wires and registers
    reg CLK;
    reg BUS_WE;
    reg  [7:0]  BUS_ADDR;
    wire [7:0]  BUS_DATA;
    
    //Incrementing bus address, inversing clock and enable
    initial begin
    BUS_ADDR = 8'h0;
    BUS_WE = 0;
    CLK = 0;
        forever begin
                #10 CLK <= ~CLK;
                #10 BUS_ADDR <= BUS_ADDR + 8'd1;
                #20 BUS_WE <= ~BUS_WE;
        end
    end

    // Instantiate the ram
    RAM ram(
        // standard signals
        .CLK(CLK),
        // BUS signals
        .BUS_DATA(BUS_DATA),
        .BUS_ADDR(BUS_ADDR),
        .BUS_WE(BUS_WE)
    );

endmodule