`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh
// Engineer: Andrew Howie
// 
// Design Name: IR Transmitter Wrapper
// Module Name: IR Transmitter
// Project Name: IR Transmitter
// 
//////////////////////////////////////////////////////////////////////////////////


module IRTransmitter(
    input CLK,
    input RESET,
    input BUS_WE,
    input [7:0] BUS_DATA,
    input [7:0] BUS_ADDR,
    output IR_LED
    );
   
    //Current directional command and car selection
    reg [3:0] COMMAND;
    reg [3:0] CAR_SELECT;
            
    // Base address of IR Transmitter as given in the notes
    parameter BASE_ADDR = 8'h90;
    
    // Read in a new command and car selection if ADDR_ENABLE is true, otherwise put the car in neutral.
    always@(posedge CLK) begin
        if ((BUS_ADDR == BASE_ADDR) && BUS_WE) begin
            CAR_SELECT = BUS_DATA[7:4];
            COMMAND = BUS_DATA[3:0];
        end
        else COMMAND = 4'b0000;
    end
           
    // Wires to connect each counter trigger to each car SM     
    wire SEND_PACKET_BLU;
    wire SEND_PACKET_YLW;
    wire SEND_PACKET_GRN;
    wire SEND_PACKET_RED;
    
    // Instantiations of each car's SEND_PACKET counter
    TenHz_cnt TenHz_cnt_BLU(.CLK(CLK), .RESET(RESET), .ENABLE(CAR_SELECT[0]), .SEND_PACKET(SEND_PACKET_BLU));
    TenHz_cnt TenHz_cnt_YLW(.CLK(CLK), .RESET(RESET), .ENABLE(CAR_SELECT[1]), .SEND_PACKET(SEND_PACKET_YLW));
    TenHz_cnt TenHz_cnt_GRN(.CLK(CLK), .RESET(RESET), .ENABLE(CAR_SELECT[2]), .SEND_PACKET(SEND_PACKET_GRN));     
    TenHz_cnt TenHz_cnt_RED(.CLK(CLK), .RESET(RESET), .ENABLE(CAR_SELECT[3]), .SEND_PACKET(SEND_PACKET_RED));
        
    // Wires to connect SM outputs to IR_LED
    wire IR_LED_BLU;
    wire IR_LED_YLW;
    wire IR_LED_GRN;
    wire IR_LED_RED;
    reg IR_LED_OUT;
    
    // Instantiations of each colour of car
    IRTransmitterSM #(.StartBurstSize(191), .GapSize(25), .CarSelectBurstSize(47), .AssertBurstSize(47), .DeAssertBurstSize(22), .FrequencyCount(2778))
        BLUCarSM (.CLK(CLK), .RESET(RESET), .ENABLE(CAR_SELECT[0]), .COMMAND(COMMAND), .SEND_PACKET(SEND_PACKET_BLU), .IR_LED(IR_LED_BLU));
        
    IRTransmitterSM #(.StartBurstSize(88),  .GapSize(40), .CarSelectBurstSize(22), .AssertBurstSize(44), .DeAssertBurstSize(22), .FrequencyCount(2500))
        YLWCarSM (.CLK(CLK), .RESET(RESET), .ENABLE(CAR_SELECT[1]), .COMMAND(COMMAND), .SEND_PACKET(SEND_PACKET_YLW), .IR_LED(IR_LED_YLW));
            
    IRTransmitterSM #(.StartBurstSize(88),  .GapSize(40), .CarSelectBurstSize(44), .AssertBurstSize(44), .DeAssertBurstSize(22), .FrequencyCount(2667))
        GRNCarSM (.CLK(CLK), .RESET(RESET), .ENABLE(CAR_SELECT[2]), .COMMAND(COMMAND), .SEND_PACKET(SEND_PACKET_GRN), .IR_LED(IR_LED_GRN));
            
    IRTransmitterSM #(.StartBurstSize(192), .GapSize(24), .CarSelectBurstSize(24), .AssertBurstSize(48), .DeAssertBurstSize(24), .FrequencyCount(2778))
        REDCarSM (.CLK(CLK), .RESET(RESET), .ENABLE(CAR_SELECT[3]), .COMMAND(COMMAND), .SEND_PACKET(SEND_PACKET_RED), .IR_LED(IR_LED_RED));
        
    // Output assignments
    always@(*) begin
        case (CAR_SELECT)
            
                // Assign IR_LED according to the current selected car
                4'b0001 : begin
                    IR_LED_OUT = IR_LED_BLU;
                end
                4'b0010 : begin
                    IR_LED_OUT = IR_LED_YLW;
                end
                4'b0100 : begin
                    IR_LED_OUT = IR_LED_GRN;
                end
                4'b1000 : begin
                    IR_LED_OUT = IR_LED_RED;
                end
                default : begin
                    IR_LED_OUT = 1'b0;
                end
        
        endcase
    end
    
    assign IR_LED = IR_LED_OUT;
    
endmodule
