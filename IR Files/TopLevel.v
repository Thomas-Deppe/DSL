`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh
// Engineer: Andrew Howie
// 
// Design Name: TopLevel
// Module Name: TopLevel
// Project Name: IR Transmitter
//
//////////////////////////////////////////////////////////////////////////////////
module TopLevel(
    input CLK,                       //connect to the 100MHz clock on the board
    input RESET,                     //connect to button to reset the whole project  
    output IR_LED
    );

    wire [1:0] interrept_RAISE;
    wire [1:0] interrept_ACK;
    
    wire busWE;
    wire [7:0] busAddress;
    wire [7:0] busData;
    wire [7:0] ROMAddress;
    wire [7:0] ROMData;
              
    ROM ROM(
        .CLK(CLK),
        //bus signals
        .DATA(ROMData),
        .ADDR(ROMAddress)
        );
                         
    RAM RAM(
        .CLK(CLK),
        //bus signals
        .BUS_DATA(busData),
        .BUS_ADDR(busAddress),
        .BUS_WE(busWE)
        );  
        
    Timer Timer(
        //standard signals
        .CLK(CLK),
        .RESET(RESET),
        //BUS signals
        .BUS_DATA(busData),
        .BUS_ADDR(busAddress),
        .BUS_WE(busWE),
        .BUS_INTERRUPT_RAISE(interrept_RAISE[1]),
        .BUS_INTERRUPT_ACK(interrept_ACK[1])
        );
                         
    IRTransmitter IRTransmitterWrapper (
        .CLK(CLK),
        .RESET(RESET),
        .BUS_WE(busWE),
        .BUS_DATA(busData),
        .BUS_ADDR(busAddress),
        .IR_LED(IR_LED)
        );
                         
    Processor Processor(
        //Standard Signals
        .CLK(CLK),
        .RESET(RESET),
        //BUS Signals
        .BUS_DATA(busData),
        .BUS_ADDR(busAddress),
        .BUS_WE(busWE),
        // ROM signals
        .ROM_DATA(ROMData),
        .ROM_ADDRESS(ROMAddress),
        // INTERRUPT signals
        .BUS_INTERRUPTS_RAISE(interrept_RAISE),
        .BUS_INTERRUPTS_ACK(interrept_ACK)
        );

endmodule
