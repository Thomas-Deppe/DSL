`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh
// Engineer: Batu Bayram
// 
// Design Name: 
// Module Name:
// Project Name: VGA_Peripheral

//////////////////////////////////////////////////////////////////////////////////


module VGA_Sig_Gen(
    //defining inputs
    input CLK,
    input [15:0] CONFIG_COL,
    input VGA_DATA,
    
    //defining outputs
    output DPR_CLK,
    output [14:0] VGA_ADDR,
    output reg [7:0] COLOUR_OUT,
    output reg HS,
    output reg VS
    //output reg [7:0] ADDRH,
    //output reg [6:0] ADDRY
    );
    
    //all registers
    reg [9:0] ADDRH;
    reg [8:0] ADDRY;
    
    // stating all the wire connections
    wire  VGA_CLK;
    wire [1:0] CountOut;
    wire  HorTriggOut, VertTriggOut;
    wire  [9:0] HorCount;
    wire  [9:0] VerticalCount;
   
    //parameters for VGA timings
    parameter VertTimeToPulseWidthEnd   = 10'd2;
    parameter VertTimeToBackPorchEnd    = 10'd31;
    parameter VertTimeToDisplayTimeEnd  = 10'd511;
    parameter VertTimeToFrontPorchEnd   = 10'd521;

    parameter HorzTimeToPulseWidthEnd   = 10'd96;
    parameter HorzTimeToBackPorchEnd    = 10'd144;
    parameter HorzTimeToDisplayTimeEnd  = 10'd784;
    parameter HorzTimeToFrontPorchEnd   = 10'd800;
    
    // This is a counter to reduce the frequency from 100MHz to 25MHz for screen refresh
    
    Generic_counter # (.COUNTER_WIDTH(2),
                       .COUNTER_MAX(3)
                       )
                       FreqCounter (
                       .CLK(CLK),
                       .ENABLE(1'b1),
                       .RESET(1'b0),
                       .TRIG_OUT(VGA_CLK),
                       .COUNT(CountOut)
                       );
    
    // This is a counter to count the horizontal pixel position
    
    Generic_counter # (.COUNTER_WIDTH(10),
                       .COUNTER_MAX(799)
                       )
                       HorizCounter (
                       .CLK(CLK),
                       .ENABLE(VGA_CLK),
                       .RESET(1'b0),
                       .TRIG_OUT(HorTriggOut),
                       .COUNT(HorCount)
                       );
                       
     // This is a counter to count the vertical pixel position                  
         
     Generic_counter # (.COUNTER_WIDTH(10),
                        .COUNTER_MAX(520)
                       )
                       VerticalCounter (
                       .CLK(CLK),
                       .ENABLE(HorTriggOut),
                       .RESET(1'b0),
                       .TRIG_OUT(VertTriggOut),
                       .COUNT(VerticalCount)
                       );
               
     
     // Horizontal syncronization signal is generated if the horizontal count value is greater than 
     // Horizontal Time to pulse width end
                    
     always@( posedge CLK) begin
          if (HorCount < HorzTimeToPulseWidthEnd)
          HS <= 0;
          else 
          HS <= 1;
     end
     
     // Horizontal syncronization signal is generated if the horizontal count value is greater than 
     // Horizontal Time to pulse width end
     
     always@(posedge CLK) begin
          if (VerticalCount < VertTimeToPulseWidthEnd)
          VS <= 0;
          else 
          VS <= 1;
     end
    
          
     // If the horizontal count is within the range, then its value is assigned to the horizontal address
     // subtracting the offset  value (144 pixels)
     // Otherwise, address is set to 0      
           
     always@(posedge CLK) begin
          if (HorCount < HorzTimeToDisplayTimeEnd && HorCount > HorzTimeToBackPorchEnd)
                ADDRH <= HorCount - HorzTimeToBackPorchEnd;
          else 
                ADDRH <= 0;
     end           
     
     // If the vertical count is within the range, then its value is assigned to the vertical address
     // subtracting the offset  value (31 pixels)
     // Otherwise, address is set to 0 
     
     always@(posedge CLK) begin           
          if ( VerticalCount < VertTimeToDisplayTimeEnd && VerticalCount > VertTimeToBackPorchEnd)
                 ADDRY <= VerticalCount - VertTimeToBackPorchEnd;
          else 
                 ADDRY <= 0;
     end

      // If the horizontal and vertical counts are within the dispaly range (we are reducing it from 800x521 to 640x480) then the 
     // the input colour is transmitted to screen; otherwise, colour is not transmitted and set to default -- black
     
    always@( posedge CLK) begin
        if (HorCount < HorzTimeToDisplayTimeEnd && HorCount > HorzTimeToBackPorchEnd 
            && VerticalCount < VertTimeToDisplayTimeEnd && VerticalCount > VertTimeToBackPorchEnd)
            
            if(VGA_DATA == 0)
                COLOUR_OUT <= CONFIG_COL[7:0];
            else
                COLOUR_OUT <= CONFIG_COL[15:8]; 
        else 
            COLOUR_OUT <= 0;
    end
    
     //outputting slowed down clock
     assign DPR_CLK = VGA_CLK;
     // Next address pixel
     assign VGA_ADDR = {ADDRY[8:2],ADDRH[9:2]};
                     
endmodule