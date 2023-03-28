`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh
// Engineer: Batu Bayram
// 
// Design Name: 
// Module Name:
// Project Name: VGA_Peripheral

//////////////////////////////////////////////////////////////////////////////////


module TOP_TB(
    );
        
        // The Clock Period is 10ns
        parameter clkPeriod = 10;
        // Stores the duration of one Clock pulse - 5ns
        parameter clkPulse = clkPeriod/2;
     
        reg RESET;
        reg CLK;
        
        wire HS;
        wire VS;
        wire [7:0] COLOUR_OUT;
        
        TopLevel uut(
                .CLK(CLK),
                .RESET(RESET),
                .VS(VS),
                .HS(HS),
                .COLOUR_OUT(COLOUR_OUT)
                );
        
        initial begin
            CLK = 0;
            forever #clkPulse CLK = ~CLK;
        end
            
        initial begin 
            RESET = 0;
            #200 RESET = 1;
            #clkPeriod RESET = 1'b0;
        end 
        
endmodule
