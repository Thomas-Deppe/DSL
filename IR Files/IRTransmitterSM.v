`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Edinburgh
// Engineer: Andrew Howie
// 
// Design Name: IR Transmitter State Machine
// Module Name: IRTransmitterSM
// Project Name: IR Transmitter
//
//////////////////////////////////////////////////////////////////////////////////
module IRTransmitterSM(
	//Standard Signals
	input RESET,
	input ENABLE,
	input CLK,
	// Bus Interface Signals
	input [3:0] COMMAND,
    input SEND_PACKET,
	// IF LED signal
	output IR_LED
    );

	parameter StartBurstSize = 192;
	parameter CarSelectBurstSize = 24;
	parameter GapSize = 24;
	parameter AssertBurstSize = 48;
	parameter DeAssertBurstSize = 24;
	parameter FrequencyCount = 2778;
	
	//Create the pulse signal
	reg Carrier = 1'b0;
	reg Carrier_Dly = 1'b0;
	reg [11:0] CarrierCounter = 12'd0;
	
	always@(posedge CLK) begin
		if(RESET| ~ENABLE) begin
			Carrier <= 1'b0;
			CarrierCounter <= 0;
		end else if(CarrierCounter == FrequencyCount) begin //this creates a 36KHz oscillator from 100MHz
			Carrier <= ~Carrier;
			CarrierCounter <= 0;
		end else
			CarrierCounter <= CarrierCounter + 1'b1;	
		Carrier_Dly <= Carrier;
	end
	
	//This is a simple state machine that pulses the IF_LED at 40KHz
	//with a specific signal
	//sequential
	
	reg [3:0] CurrState, NextState;
	reg [7:0] CurrBurstCounter, NextBurstCounter;
	reg	CurrLEDEnable, NextLEDEnable;
	
	always@(posedge CLK) begin
		if(RESET | ~ENABLE) begin
			CurrState			<= 3'b00;
			CurrBurstCounter	<= 0;
			CurrLEDEnable		<= 1'b0;
		end else begin
			CurrState			<= NextState;
			CurrBurstCounter	<= NextBurstCounter;
			CurrLEDEnable		<= NextLEDEnable;
		end
	end
		
	
	//combinatorial
	always@*begin
	   //Defualts
	   NextState = 4'b0000;
	   NextBurstCounter = 0;
	   NextLEDEnable = 1'b0;
	   case (CurrState)

	       //IDLE
	       4'b0000: begin
	           if(SEND_PACKET)
		          NextState = 4'b0001;
		       else
			      NextState = 4'b0000;
		   end

		   //START BURST
		   4'b0001:	begin
		   if(CurrBurstCounter == StartBurstSize) begin
		       NextState = 4'b0010;
			   NextBurstCounter = 0;
		   end else begin
			   NextState = 4'b0001;
			   if(~Carrier & Carrier_Dly)
			        NextBurstCounter = CurrBurstCounter + 1'b1;
			   else
					NextBurstCounter = CurrBurstCounter;
			   end
					NextLEDEnable = 1'b1;
		    end

			//GAP 1
			4'b0010: begin
			if(CurrBurstCounter == GapSize) begin
			    NextState = 4'b0011;
				NextBurstCounter = 0;
			end else begin
			    NextState = 4'b0010;
				if(~Carrier & Carrier_Dly)
				    NextBurstCounter = CurrBurstCounter + 1'b1;
				else
					NextBurstCounter = CurrBurstCounter;
			    end
			end

			//CAR SELECT BURST
			4'b0011: begin
			if(CurrBurstCounter == CarSelectBurstSize) begin
		        NextState = 4'b0100;
				NextBurstCounter = 0;
			end else begin
				NextState = 4'b0011;
				if(~Carrier & Carrier_Dly)
				    NextBurstCounter = CurrBurstCounter + 1'b1;
				else
					NextBurstCounter 	= CurrBurstCounter;
			    end
				    NextLEDEnable 				= 1'b1;
			end

			//GAP 2
			4'b0100: begin
			if(CurrBurstCounter == GapSize) begin
			    NextState = 4'b0101;
				NextBurstCounter = 0;
			end else begin
				NextState = 4'b0100;
				if(~Carrier & Carrier_Dly)
				    NextBurstCounter = CurrBurstCounter + 1'b1;
				else
					NextBurstCounter = CurrBurstCounter;
				end
			end

			//RIGHT
			4'b0101: begin
			if((COMMAND[0] & (CurrBurstCounter > AssertBurstSize-1)) | (~COMMAND[0] & (CurrBurstCounter > DeAssertBurstSize-1))) begin
			    NextState = 4'b0110;
				NextBurstCounter = 0;
			end else begin
				NextState = 4'b0101;
				if(~Carrier & Carrier_Dly)
				    NextBurstCounter = CurrBurstCounter + 1'b1;
				else
					NextBurstCounter = CurrBurstCounter;
				end
				    NextLEDEnable = 1'b1;
			end

			//GAP 3
			4'b0110: begin
				if(CurrBurstCounter == GapSize) begin
					NextState = 4'b0111;
					NextBurstCounter = 0;
				end else begin
					NextState = 4'b0110;
					if(~Carrier & Carrier_Dly)
						NextBurstCounter = CurrBurstCounter + 1'b1;
					else
						NextBurstCounter = CurrBurstCounter;
				end
			end

			//LEFT
			4'b0111: begin
				if((COMMAND[1] 	& (CurrBurstCounter > AssertBurstSize-1)) | (~COMMAND[1] & (CurrBurstCounter > DeAssertBurstSize-1))	) begin
					NextState = 4'b1000;
					NextBurstCounter = 0;
				end else begin
					NextState 				= 4'b0111;
					if(~Carrier & Carrier_Dly)
						NextBurstCounter 	= CurrBurstCounter + 1'b1;
					else
						NextBurstCounter 	= CurrBurstCounter;
				end
							
							NextLEDEnable 				= 1'b1;
						end

			//GAP 4
			4'b1000: begin
				if(CurrBurstCounter == GapSize) begin
					NextState = 4'b1001;
					NextBurstCounter = 0;
				end else begin
					NextState = 4'b1000;
					if(~Carrier & Carrier_Dly)
						NextBurstCounter = CurrBurstCounter + 1'b1;
					else
						NextBurstCounter = CurrBurstCounter;
				end
			end

			//BACKWARDS
			4'b1001: begin
			    if((COMMAND[2] 	& (CurrBurstCounter > AssertBurstSize-1))| (~COMMAND[2] & (CurrBurstCounter > DeAssertBurstSize-1))	) begin
				    NextState = 4'b1010;
					NextBurstCounter = 0;
				end else begin
					NextState = 4'b1001;
					if(~Carrier & Carrier_Dly)
					   NextBurstCounter = CurrBurstCounter + 1'b1;
					else
						NextBurstCounter = CurrBurstCounter;
					end
							
				NextLEDEnable = 1'b1;
			end
			
			//GAP 5
			4'b1010: begin
			    if(CurrBurstCounter == GapSize) begin
				    NextState = 4'b1011;
					NextBurstCounter = 0;
				end else begin
					NextState = 4'b1010;
					if(~Carrier & Carrier_Dly)
						NextBurstCounter = CurrBurstCounter + 1'b1;
					else
						NextBurstCounter = CurrBurstCounter;
				end
			end

			//FORWARDS
			4'b1011: begin
				if((COMMAND[3] 	& (CurrBurstCounter > AssertBurstSize-1)) | (~COMMAND[3] & (CurrBurstCounter > DeAssertBurstSize-1))	) begin
					NextState = 4'b1100;
					NextBurstCounter = 0;
				end else begin
					NextState = 4'b1011;
					if(~Carrier & Carrier_Dly)
						NextBurstCounter = CurrBurstCounter + 1'b1;
					else
						NextBurstCounter = CurrBurstCounter;
				end						
						NextLEDEnable = 1'b1;
			end

			//GAP 6
			4'b1100: begin
				if(CurrBurstCounter == GapSize) begin
			    	NextState = 4'b0000;
					NextBurstCounter = 0;
				end else begin
					NextState = 4'b1100;
					if(~Carrier & Carrier_Dly)
						NextBurstCounter = CurrBurstCounter + 1'b1;
					else
				    	NextBurstCounter = CurrBurstCounter;
			    end
			end

			//DEFAULT
			default: begin
			    NextState = 4'b0000;
			    NextBurstCounter = 0;
				NextLEDEnable = 1'b0;
			end
		endcase
	end
	
	//Tie the 40KHz signal to the LED output vie the Enable signal
	assign IR_LED = Carrier && CurrLEDEnable;


endmodule
