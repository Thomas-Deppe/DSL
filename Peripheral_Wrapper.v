`timescale 1ns / 1ps

module VGA_TB(
    );
    
    reg CLK;                     // board clock: 100MHz
    reg RESET;
    reg [7:0] BUS_ADDR;          // BUS_ADDR
    reg [7:0] BUS_DATA;          // BUS_DATA decide config colour
    reg BUS_WE;                   // reset button
    wire VGA_HS;                  
    wire VGA_VS;                  
    wire [7:0] COLOUR_OUT;
    //wire [14:0] FB_ADDR;
    //wire FB_DATA_IN;
    //wire [15:0] CONFIG_COLOURS;
    
    //Just place your peripheral here
    VGA uut(
            .CLK(CLK),                 
            .RESET(RESET),
            .BUS_ADDR(BUS_ADDR),          
            .BUS_DATA(BUS_DATA),          
            .BUS_WE(BUS_WE),                  
            .VGA_HS(VGA_HS),                  
            .VGA_VS(VGA_VS),
            //.FB_ADDR(FB_ADDR),
            //.FB_DATA_IN(FB_DATA_IN),
            .CONFIG_COLOURS(CONFIG_COLOURS),        
            .COLOUR_OUT(COLOUR_OUT)
            
    );
    
    initial begin
    CLK = 0;
    forever #20 CLK <= ~CLK;
    end
    
    initial begin
    BUS_DATA = 0;
    forever #200 BUS_DATA <= BUS_DATA + 1;
    end
    
    initial begin
    BUS_ADDR = 0;
    RESET = 0;
    BUS_WE = 1;
    #40 RESET = 1;
    #30 RESET = 0;
    #30 BUS_ADDR <= 8'hB0; //0
    #500 BUS_ADDR <= 8'hB1; //1
    #500 BUS_ADDR <= 8'hB2; //2
    #500 BUS_ADDR <= 8'hB0; //1
    #500 BUS_ADDR <= 8'hB1; //2
    #500 BUS_ADDR <= 8'hB2; //1
    end
    
    
endmodule
