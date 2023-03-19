`timescale 1ns / 1ps



module VGA_TB(
    );
    
    reg CLK;                     // board clock: 100MHz
    reg RESET;
    reg [7:0] BUS_ADDR;          // BUS_ADDR
    reg [7:0] BUS_DATA;          // BUS_DATA decide config colour
    reg BUS_WE;                   // reset button
    wire HS;                  
    wire VS;                  
    wire [7:0] COLOUR_OUT;
    //wire [14:0] FB_ADDR;
    //wire FB_DATA_IN;
    //wire [15:0] CONFIG_COL;
    
    VGA uut(
            .CLK(CLK),                 
            .RESET(RESET),
            .BUS_ADDR(BUS_ADDR),          
            .BUS_DATA(BUS_DATA),          
            .BUS_WE(BUS_WE),                  
            .HS(HS),                  
            .VS(VS),
            //.FB_ADDR(FB_ADDR),
            //.FB_DATA_IN(FB_DATA_IN),
            //.CONFIG_COLOURS(CONFIG_COL),        
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
    forever begin 
        #200 BUS_ADDR <= 8'hB0; //0
        #200 BUS_ADDR <= 8'hB1; //1
        #200 BUS_ADDR <= 8'hB2; //2
        end
    end
    
    
endmodule
