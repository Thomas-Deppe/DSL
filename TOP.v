module TOP(
    input CLK,
    //input RESET,
    output wire HS,                  // horizontal sync output
    output wire VS,                  // vertical sync output
    output wire [7:0] COLOUR_OUT        // vga color output 
    );
  
    
    wire BUS_WE;
    wire [7:0] BUS_DATA;
    wire [7:0] BUS_ADDR;
    wire [7:0] ROM_ADDR;
    wire [7:0] ROM_DATA;
    wire [1:0] BUS_INTERRUPTS_RAISE;
    wire [1:0] BUS_INTERRUPTS_ACK;
    
    
    
    // Instantiate the timer
    Timer Timer(
         // standard signals
        .CLK(CLK),
        .RESET(RESET),
        // BUS signals
        .BUS_DATA(BUS_DATA),
        .BUS_ADDR(BUS_ADDR),
        .BUS_WE(BUS_WE),
        .BUS_INTERRUPT_RAISE(BUS_INTERRUPTS_RAISE[1]),
        .BUS_INTERRUPT_ACK(BUS_INTERRUPTS_ACK[1])   
    );
    
    
    // Instantiate the microprocessor
    Processor mP (
         // standard signals
        .CLK(CLK),
        .RESET(RESET),
         // bus signals
        .BUS_DATA(BUS_DATA),
        .BUS_ADDR(BUS_ADDR),
        .BUS_WE(BUS_WE),
         // rom signals
        .ROM_ADDRESS(ROM_ADDR),
        .ROM_DATA(ROM_DATA),
         // inetrrupt signals
        .BUS_INTERRUPTS_RAISE(BUS_INTERRUPTS_RAISE),
        .BUS_INTERRUPTS_ACK(BUS_INTERRUPTS_ACK)
    );
    
    // Instantiate the ram
    RAM RAM(
        // standard signals
        .CLK(CLK),
        // BUS signals
        .BUS_DATA(BUS_DATA),
        .BUS_ADDR(BUS_ADDR),
        .BUS_WE(BUS_WE)
    );
    
    
    // Instantiate the rom
    ROM ROM(
        // standard signals
        .CLK(CLK),
        // Bus signals
        .DATA(ROM_DATA),
        .ADDR(ROM_ADDR)
    );
    
    // Instantiate the vga
    VGA_Wrapper VGA(
        .CLK(CLK),               // board clock: 100MHz
        .WE_sys(BUS_WE),
        .BUS_ADDR(BUS_ADDR),
        .BUS_DATA(BUS_DATA),   // VGA config colour 16 bits
        .RESET(RESET),            // reset button  
        .HS(HS),           // horizontal sync output
        .VS(VS),           // vertical sync output
        .COLOUR_OUT(COLOUR_OUT)    // vga color output 
    );
    
endmodule
