`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Univeristy of Edinburgh
// Engineer: s1924558
// 
// Create Date: 17.03.2023 11:05:03
// Design Name: Mouse_Demo_Processor
// Module Name: TOP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: A wrapper module used to interface all buses with the microprocessor.
// 
//////////////////////////////////////////////////////////////////////////////////


module TopLevel(
            //Standard inputs
            input CLK,
            input RESET,
            //Inputs for interfacing with the mouse
            inout CLK_MOUSE,
            inout DATA_MOUSE,
            //Inputs and outputs for display
            input  [7:0] SLIDE_SWITCHES,
            output [3:0] SEG_SELECT_OUT,
            output [7:0] DISP_OUT,
            output [15:0] LEDS
    );
    
    wire Bus_we;
    //The Bus Data wire
    wire [7:0] Bus_Data;
    //The Bus Address wire
    wire [7:0] Bus_Addr;
    //ROM Address wire
    wire [7:0] ROM_Addr;
    wire [7:0] ROM_Data;
    wire [1:0] Bus_Interrupt_Raise;
    wire [1:0] Bus_Interrupt_ACK;
    
    // Instantiate the timer
    Timer Timer(
            // standard signals
            .CLK(CLK),
            .RESET(RESET),
            // BUS signals
            .BUS_DATA(Bus_Data),
            .BUS_ADDR(Bus_Addr),
            .BUS_WE(Bus_we),
            .BUS_INTERRUPT_RAISE(Bus_Interrupt_Raise[1]),
            .BUS_INTERRUPT_ACK(Bus_Interrupt_ACK[1])   
            );
            
    Processor microProcessor (
            //Standard Signals  
            .CLK(CLK),
            .RESET(RESET),  
            //BUS Signals  
            .BUS_DATA(Bus_Data),  
            .BUS_ADDR(Bus_Addr),  
            .BUS_WE(Bus_we),  
            // ROM signals  
            .ROM_ADDRESS(ROM_Addr),  
            .ROM_DATA(ROM_Data),  
            // INTERRUPT signals  
            .BUS_INTERRUPTS_RAISE(Bus_Interrupt_Raise),  
            .BUS_INTERRUPTS_ACK(Bus_Interrupt_ACK)
            );
            
    // Instantiate the rom
    ROM ROM(
            // standard signals
            .CLK(CLK),
            // Bus signals
            .DATA(ROM_Data),
            .ADDR(ROM_Addr)
            );
            
    // Instantiate the ram
    RAM RAM(
            // standard signals
            .CLK(CLK),
            // BUS signals
            .BUS_DATA(Bus_Data),
            .BUS_ADDR(Bus_Addr),
            .BUS_WE(Bus_we)
            );
    //Instantiate mouse bus 
    Mouse_BUS mouse(
            .CLK(CLK),
            .RESET(RESET),
            .CLK_MOUSE(CLK_MOUSE),
            .DATA_MOUSE(DATA_MOUSE),
            .BUS_DATA(Bus_Data),
            .BUS_ADDR(Bus_Addr),
            .BUS_INTERRUPT_RASIE(Bus_Interrupt_Raise[0]),
            .BUS_INTERRUPT_ACK(Bus_Interrupt_ACK[0]),
            .BUS_WE(Bus_we)
            );
    //Used to display the hexadeicmal output. Called Disp_Decimal as it was copied from the decimal timer 
    //in DSL 3
    Disp_Decimal seg7(
            .CLK(CLK),
            .RESET(RESET),
            .ENABLE(Bus_we),
            .SEG_SELECT(SEG_SELECT_OUT),
            .DEC_OUT(DISP_OUT),
            .BUS_DATA(Bus_Data),
            .BUS_ADDR(Bus_Addr)
            );
    //Instantiate the LED bus to write data to the LEDS
    LEDS_BUS led(
            .CLK(CLK),
            .RESET(RESET),
            .LEDS(LEDS),
            .BUS_DATA(Bus_Data),
            .BUS_ADDR(Bus_Addr),
            .BUS_WE(Bus_we)
            );
    //Instantiates the slide switches bus to read data from the LEDS
    Slideswitches_BUS slideSwitches(
            .CLK(CLK),
            .RESET(RESET),
            .SLIDE_SWITCHES(SLIDE_SWITCHES),
            .BUS_DATA(Bus_Data),
            .BUS_ADDR(Bus_Addr),
            .BUS_WE(Bus_we)
            );
    
endmodule
