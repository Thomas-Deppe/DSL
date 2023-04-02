       
    initial $readmemb("C:/Users/Hp/OneDrive/Documents/DSD_4_MP/DSD_4_MP.srcs/sources_1/new/ROM.mem", ROM);
    reg [14:0] FILE_ADDR [2**5-1:0];
    reg [14:0] DATA;
    reg [7:0] ADDR;
    //single port ram
    always@(posedge CLK)
        DATA <= FILE_ADDR[ADDR];
        ADDR <= ADDR + 1;
        if (DATA == B_ADDR) begin
            FB_ADDR <= DATA;
            DATA_IN <= 1; 
        end
        else begin
            FB_ADDR <= FB_ADDR;
            DATA_IN <= 0;
        end
    end
