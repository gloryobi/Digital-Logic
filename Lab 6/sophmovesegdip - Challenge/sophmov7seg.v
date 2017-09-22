`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:34:45 03/03/2015 
// Design Name: 
// Module Name:    sophmov7seg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module movsevseg(clk0, rst, button, a, b, c, d, e, f, g, n3, n2, n1, n0);

	output reg a, b, c, d, e, f, g;
	output reg n3, n2, n1, n0;
	input clk0, rst, button;
	wire Clk;
	
	parameter A = 0, B = 1, C = 2, D = 3, E = 4, F = 5, G = 6, H = 7, I = 8, J = 9, K = 10, L = 11, M = 12, N = 13, O = 14, P = 15;
	
	reg [3:0] State, StateNext;
	
	clockdivider instance1(clk0, Clk);
	
	
	always@(State, button)
	begin
	n3 <= 1; n2 <= 1; n1 <= 1; n0 <= 1;
	a <= 1; b <= 1; c <= 1; d <= 1; e <= 1; f <= 1; g <= 1;
	case(State)
		A: begin
			n3 <= 1; n2 <= 1; n1 <= 1; n0 <= 0;
			a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 1;
			if(button == 1)
			begin
				StateNext <= B;
			end
			else
			begin
				StateNext <= A;
			end
		end
		B: begin
			n3 <= 1; n2 <= 1; n1 <= 0; n0 <= 1;
			a <= 1; b <= 0; c <= 0; d <= 1; e <= 1; f <= 1; g <= 1;
			if(button == 1)
			begin
				StateNext <= C;
			end
			else
			begin
				StateNext <= B;
			end
		end
		C: begin
			n3 <= 1; n2 <= 0; n1 <= 1; n0 <= 1;
			a <= 0; b <= 0; c <= 1; d <= 0; e <= 0; f <= 1; g <= 0;
			if(button == 1)
			begin
				StateNext <= D;
			end
			else
			begin
				StateNext <= C;
			end
		end
		D: begin
			n3 <= 0; n2 <= 1; n1 <= 1; n0 <= 1;
			a <= 0; b <= 0; c <= 0; d <= 0; e <= 1; f <= 1; g <= 0;
			if(button == 1)
			begin
				StateNext <= E;
			end
			else
			begin
				StateNext <= D;
			end
		end
		E: begin
			n3 <= 1; n2 <= 1; n1 <= 1; n0 <= 0;
			a <= 1; b <= 0; c <= 0; d <= 1; e <= 1; f <= 0; g <= 0;
			if(button == 1)
			begin
				StateNext <= F;
			end
			else
			begin
				StateNext <= E;
			end
		end
		F: begin
			n3 <= 1; n2 <= 1; n1 <= 0; n0 <= 1;
			a <= 0; b <= 1; c <= 0; d <= 0; e <= 1; f <= 0; g <= 0;
			if(button == 1)
			begin
				StateNext <= G;
			end
			else
			begin
				StateNext <= F;
			end
		end
		G: begin
			n3 <= 1; n2 <= 0; n1 <= 1; n0 <= 1;
			a <= 0; b <= 1; c <= 0; d <= 0; e <= 0; f <= 0; g <= 0;
			if(button == 1)
			begin
				StateNext <= H;
			end
			else
			begin
				StateNext <= G;
			end
		end
		H: begin
			n3 <= 0; n2 <= 1; n1 <= 1; n0 <= 1;
			a <= 0; b <= 0; c <= 0; d <= 1; e <= 1; f <= 1; g <= 1;
			if(button == 1)
			begin
				StateNext <= I;
			end
			else
			begin
				StateNext <= H;
			end
		end
		I: begin
			n3 <= 1; n2 <= 1; n1 <= 1; n0 <= 0;
			a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 0;
			if(button == 1)
			begin
				StateNext <= J;
			end
			else
			begin
				StateNext <= I;
			end
		end
		J: begin
			n3 <= 1; n2 <= 1; n1 <= 0; n0 <= 1;
			a <= 0; b <= 0; c <= 0; d <= 0; e <= 1; f <= 0; g <= 0;
			if(button == 1)
			begin
				StateNext <= K;
			end
			else
			begin
				StateNext <= J;
			end
		end
		K: begin
			n3 <= 1; n2 <= 0; n1 <= 1; n0 <= 1;
			a <= 0; b <= 0; c <= 0; d <= 1; e <= 0; f <= 0; g <= 0;
			if(button == 1)
			begin
				StateNext <= L;
			end
			else
			begin
				StateNext <= K;
			end
		end
		L: begin
			n3 <= 0; n2 <= 1; n1 <= 1; n0 <= 1;
			a <= 1; b <= 1; c <= 0; d <= 0; e <= 0; f <= 0; g <= 0;
			if(button == 1)
			begin
				StateNext <= M;
			end
			else
			begin
				StateNext <= L;
			end
		end
		M: begin
			n3 <= 1; n2 <= 1; n1 <= 1; n0 <= 0;
			a <= 0; b <= 1; c <= 1; d <= 0; e <= 0; f <= 0; g <= 1;
			if(button == 1)
			begin
				StateNext <= N;
			end
			else
			begin
				StateNext <= M;
			end
		end
		N: begin
			n3 <= 1; n2 <= 1; n1 <= 0; n0 <= 1;
			a <= 1; b <= 0; c <= 0; d <= 0; e <= 0; f <= 1; g <= 0;
			if(button == 1)
			begin
				StateNext <= O;
			end
			else
			begin
				StateNext <= N;
			end
		end
		O: begin
			n3 <= 1; n2 <= 0; n1 <= 1; n0 <= 1;
			a <= 0; b <= 1; c <= 1; d <= 0; e <= 0; f <= 0; g <= 0;
			if(button == 1)
			begin
				StateNext <= P;
			end
			else
			begin
				StateNext <= O;
			end
		end
		P: begin
			n3 <= 0; n2 <= 1; n1 <= 1; n0 <= 1;
			a <= 0; b <= 1; c <= 1; d <= 1; e <= 0; f <= 0; g <= 0;
			if(button == 1)
			begin
				StateNext <= A;
			end
			else
			begin
				StateNext <= P;
			end
		end
		default: begin
			n3 <= 1; n2 <= 1; n1 <= 1; n0 <= 0;
			a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 1;
			StateNext <= A;
		end
	endcase
	end
	
	always@(posedge Clk)
	begin
		if(rst == 1)
			State <= A;
		else
			State <= StateNext;
	end
	
endmodule
