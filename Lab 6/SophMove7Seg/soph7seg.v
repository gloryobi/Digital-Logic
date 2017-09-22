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
module soph7seg(clk0, rst, button, count, a, b, c, d, e, f, g, n3, n2, n1, n0);

	output reg a, b, c, d, e, f, g;
	output reg n3, n2, n1, n0;
	input clk0, rst, button, count;
	wire Clk;
	
	parameter A = 0, B = 1, C = 2, D = 3, E = 4, F = 5, G = 6, H = 7, I = 8, J = 9, K = 10, L = 11, M = 12, N = 13, O = 14, P = 15;
	
	reg [3:0] State, StateNext, Num, NumNext;
	
	clockdivider instance1(clk0, Clk);
	
	always@(State, button)
	begin
	n3 <= 1; n2 <= 1; n1 <= 1; n0 <= 1;
	case(State)
		A: begin
			n3 <= 1; n2 <= 1; n1 <= 1; n0 <= 0;
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
			if(button == 1)
			begin
				StateNext <= A;
			end
			else
			begin
				StateNext <= D;
			end
		end
		default: begin
			n3 <= 1; n2 <= 1; n1 <= 1; n0 <= 0;
			StateNext <= A;
		end
	endcase
	end
	
	always@(Num, count)
	begin
	a <= 1; b <= 1; c <= 1; d <= 1; e <= 1; f <= 1; g <= 1;
	case(Num)
		A: begin
			a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 1;
			if(count == 1)
			begin
				NumNext <= B;
			end
			else
			begin
				NumNext <= A;
			end
		end
		B: begin
			a <= 1; b <= 0; c <= 0; d <= 1; e <= 1; f <= 1; g <= 1;
			if(count == 1)
			begin
				NumNext <= C;
			end
			else
			begin
				NumNext <= B;
			end
		end
		C: begin
			a <= 0; b <= 0; c <= 1; d <= 0; e <= 0; f <= 1; g <= 0;
			if(count == 1)
			begin
				NumNext <= D;
			end
			else
			begin
				NumNext <= C;
			end
		end
		D: begin
			a <= 0; b <= 0; c <= 0; d <= 0; e <= 1; f <= 1; g <= 0;
			if(count == 1)
			begin
				NumNext <= E;
			end
			else
			begin
				NumNext <= D;
			end
		end
		E: begin
			a <= 1; b <= 0; c <= 0; d <= 1; e <= 1; f <= 0; g <= 0;
			if(count == 1)
			begin
				NumNext <= F;
			end
			else
			begin
				NumNext <= E;
			end
		end
		F: begin
			a <= 0; b <= 1; c <= 0; d <= 0; e <= 1; f <= 0; g <= 0;
			if(count == 1)
			begin
				NumNext <= G;
			end
			else
			begin
				NumNext <= F;
			end
		end
		G: begin
			a <= 0; b <= 1; c <= 0; d <= 0; e <= 0; f <= 0; g <= 0;
			if(count == 1)
			begin
				NumNext <= H;
			end
			else
			begin
				NumNext <= G;
			end
		end
		H: begin
			a <= 0; b <= 0; c <= 0; d <= 1; e <= 1; f <= 1; g <= 1;
			if(count == 1)
			begin
				NumNext <= I;
			end
			else
			begin
				NumNext <= H;
			end
		end
		I: begin
			a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 0;
			if(count == 1)
			begin
				NumNext <= J;
			end
			else
			begin
				NumNext <= I;
			end
		end
		J: begin
			a <= 0; b <= 0; c <= 0; d <= 0; e <= 1; f <= 0; g <= 0;
			if(count == 1)
			begin
				NumNext <= K;
			end
			else
			begin
				NumNext <= J;
			end
		end
		K: begin
			a <= 0; b <= 0; c <= 0; d <= 1; e <= 0; f <= 0; g <= 0;
			if(count == 1)
			begin
				NumNext <= L;
			end
			else
			begin
				NumNext <= K;
			end
		end
		L: begin
			a <= 1; b <= 1; c <= 0; d <= 0; e <= 0; f <= 0; g <= 0;
			if(count == 1)
			begin
				NumNext <= M;
			end
			else
			begin
				NumNext <= L;
			end
		end
		M: begin
			a <= 0; b <= 1; c <= 1; d <= 0; e <= 0; f <= 0; g <= 1;
			if(count == 1)
			begin
				NumNext <= N;
			end
			else
			begin
				NumNext <= M;
			end
		end
		N: begin
			a <= 1; b <= 0; c <= 0; d <= 0; e <= 0; f <= 1; g <= 0;
			if(count == 1)
			begin
				NumNext <= O;
			end
			else
			begin
				NumNext <= N;
			end
		end
		O: begin
			a <= 0; b <= 1; c <= 1; d <= 0; e <= 0; f <= 0; g <= 0;
			if(count == 1)
			begin
				NumNext <= P;
			end
			else
			begin
				NumNext <= O;
			end
		end
		P: begin
			a <= 0; b <= 1; c <= 1; d <= 1; e <= 0; f <= 0; g <= 0;
			if(count == 1)
			begin
				NumNext <= A;
			end
			else
			begin
				NumNext <= P;
			end
		end
		default: begin
			a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 1;
			NumNext <= A;
		end
		endcase
	end
	
	always@(posedge Clk)
	begin
		if(rst == 1)
		begin
			State <= A;
			Num <= A;
		end
		else
		begin
			State <= StateNext;
			Num <= NumNext;
		end
	end
	
endmodule

