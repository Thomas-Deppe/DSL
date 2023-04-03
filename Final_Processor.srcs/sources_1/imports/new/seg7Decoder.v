`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company:			UoE
// Engineer:		
// 
// Create Date:		10:26:39 10/03/2012 
// Design Name:		PS/2 Demo
// Module Name:		seg7decoder
// Project Name:	PS/2 Demo
// Target Devices:	Digilent Basys2 100K
// Tool versions:	Xilinx ISE WebPack 14.2
// Description:		A decoder for the Basys2's 4-digit 7-segment display
//
// Dependencies:	none
//
// Revision: 
//		Revision 1		-	Implementation complete
// 		Revision 0.01	-	File Created
// Additional Comments: 
//	Interface:
//		SEG_SELECT_IN:	Select line for which of the digits to
//					operate
//		BIN_IN:		Input data in BNN format.
//		DOT_IN:		Input bit for the decimal point segment.
//		SEG_SELECT_OUT:	4-bit positional code; selects one of the 4
//					anodes of the display
//		HEX_OUT:	Display control signals. Determines the symbol
//					to be outputted.
////////////////////////////////////////////////////////////////////////////////
module seg7decoder(
		input		[1:0]	SEG_SELECT_IN,
		input		[4:0]	BIN_IN,
		input				DOT_IN,
		output	reg	[3:0]	SEG_SELECT_OUT,
		output	reg	[7:0]	HEX_OUT
	);

	always@(BIN_IN) begin
		case(BIN_IN)
			5'b00000:	HEX_OUT[6:0] <= 7'b1000000; // 0
			5'b00001:	HEX_OUT[6:0] <= 7'b1111001; // 1
			5'b00010:	HEX_OUT[6:0] <= 7'b0100100; // 2
			5'b00011:	HEX_OUT[6:0] <= 7'b0110000; // 3
			
			5'b00100:	HEX_OUT[6:0] <= 7'b0011001; // 4
			5'b00101:	HEX_OUT[6:0] <= 7'b0010010; // 5
			5'b00110:	HEX_OUT[6:0] <= 7'b0000010; // 6
			5'b00111:	HEX_OUT[6:0] <= 7'b1111000; // 7
			
			5'b01000:	HEX_OUT[6:0] <= 7'b0000000; // 8
			5'b01001:	HEX_OUT[6:0] <= 7'b0011000; // 9
			5'b01010:	HEX_OUT[6:0] <= 7'b0001000; // A
			5'b01011:	HEX_OUT[6:0] <= 7'b0000011; // B
			
			5'b01100:	HEX_OUT[6:0] <= 7'b1000110; // C
			5'b01101:	HEX_OUT[6:0] <= 7'b0100001; // D
			5'b01110:	HEX_OUT[6:0] <= 7'b0000110; // E
			5'b01111:	HEX_OUT[6:0] <= 7'b0001110; // F
			
	        5'b10000:	HEX_OUT[6:0] <= 7'b0101111; //R
	        5'b10001:	HEX_OUT[6:0] <= 7'b0010001; //Y
	        5'b10011:	HEX_OUT[6:0] <= 7'b0010000; //G
	        5'b10111:	HEX_OUT[6:0] <= 7'b1000111; //L

			default:	HEX_OUT[6:0] <= 7'b1111111; // off
		endcase
	end
	
	always@(DOT_IN) begin
		HEX_OUT[7] <= ~DOT_IN;
	end
	
	always@(SEG_SELECT_IN) begin
		case(SEG_SELECT_IN)
			2'b00:		SEG_SELECT_OUT <= 4'b1110; // rightmost
			2'b01:		SEG_SELECT_OUT <= 4'b1101;
			2'b10:		SEG_SELECT_OUT <= 4'b1011;
			2'b11:		SEG_SELECT_OUT <= 4'b0111; // leftmost
			default:	SEG_SELECT_OUT <= 4'b1111; // all off
		endcase
	end

endmodule
