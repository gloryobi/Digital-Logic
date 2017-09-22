`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:50:34 03/03/2015 
// Design Name: 
// Module Name:    movsevseg 
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
module movsevseg(clk0, rst, button, w, x, y, z, a, b, c, d, e, f, g, n3, n2, n1, n0);

	input w, x, y, z;
	output a, b, c, d, e, f, g;
	wire Clk;
	input clk0, rst, button;
	output reg n3, n2, n1, n0;
	
	parameter A = 0, B = 1, C = 2, D = 3;
	
	reg [1:0] State, StateNext;
	
	seg7 instance2(w, x, y, z, a, b, c, d, e, f, g);
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
	
	always@(posedge Clk)
	begin
		if(rst == 1)
			State <= A;
		else
			State <= StateNext;
	end
	
endmodule