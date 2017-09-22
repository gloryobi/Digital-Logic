`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:18:38 03/24/2015 
// Design Name: 
// Module Name:    counter 
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
module counter(clk0, cnt, clr, dir, ld, L3, L2, L1, L0, a, b, c, d, e, f, g, n3, n2, n1, n0, tc, Q);

input clk0, cnt, clr, dir, ld;
input L3, L2, L1, L0;
output a, b, c, d, e, f, g;
output reg tc; 
output reg [3:0] Q = 4'b0000;
output reg n3;
output reg n2;
output reg n1;
output reg n0;
wire Clk;

clockdivider C1(clk0, Clk);
seg7 disp(Q[3], Q[2], Q[1], Q[0], a, b, c, d, e, f, g);

always@(*)
begin
	n3 <= 1;
	n2 <= 1;
	n1 <= 1;
	n0 <= 0;
end

always@(posedge Clk)
begin
	if(ld == 1)
	begin
		Q[3] <= L3;
		Q[2] <= L2;
		Q[1] <= L1;
		Q[0] <= L0;
	end
	else if(cnt == 1)
	begin
		if(dir == 0)
		begin
			if(tc == 0)
			begin
				Q <= Q+1;
			end
			else
				Q <= 4'b0000;
		end
		else
		begin
			if(tc == 0)
			begin
				Q <= Q-1;
			end
			else
			begin
				Q <= 4'b1111;
			end
		end
	end
	else if(clr == 1)
	begin
		Q <= 4'b0000;
	end 
end

always@(posedge Clk)
begin
	if((Q == 4'b0000 && dir == 1) | (Q == 4'b1111 && dir == 0))
	begin
		tc <= 1;
	end
	else
	begin
		tc <= 0;
	end
end

endmodule
