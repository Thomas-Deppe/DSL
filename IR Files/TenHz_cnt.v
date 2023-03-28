`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh
// Engineer: Andrew Howie
// 
// Design Name: Ten Hertz Counter
// Module Name: TenHz_cnt
// Project Name: IR Transmitter
//  
//////////////////////////////////////////////////////////////////////////////////


module TenHz_cnt(
    input CLK,
    input ENABLE,
    input RESET,
    output SEND_PACKET
    );
    
    //Registers to track counter and output when the maximum value is reached
    reg [23:0] countValue = 0;
    reg triggerOut;
    
    //parameter CounterMax = ; // Maximum value to count to for 10Hz signal
            
    always@(posedge CLK) begin
        if (RESET || ~ENABLE) begin // Reset variables if RESET is on.
            triggerOut <= 0;
            countValue <= 0;
        end
        else begin
            if (countValue == 3000000) begin // Reset the count and output 1 when the max is reached. 10000000
                triggerOut <= 1;
                countValue <= 0;
            end
            else begin
                triggerOut <= 0;
                countValue <= countValue + 1;
            end
        end 
    end
            
    assign SEND_PACKET = triggerOut; 
    
endmodule
