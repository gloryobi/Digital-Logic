`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:44:58 03/24/2015 
// Design Name: 
// Module Name:    timer 
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
module timer(Clk, a, b, c, d, e, f, g, n3, n2, n1, n0, tc, Q);

input Clk;
output a, b, c, d, e, f, g;
output reg n3;
output reg n2;
output reg n1;
output reg n0;
output reg [3:0]Q = 4'b0011;
output reg tc = 0;
wire clk0;

clockdivider C1(Clk, clk0);
seg7 disp(Q[3], Q[2], Q[1], Q[0], a, b, c, d, e, f, g);

always@(posedge clk0)
begin
	n3 <= 1;
	n2 <= 1;
	n1 <= 1;
	n0 <= 0;
end

always@(posedge clk0)
begin
	if(Q == 4'b0000) begin
		tc <= 1;
		Q <= 4'b0011;
	end
	else begin
		tc <= 0;
		Q <= Q - 1;
	end
end
endmodule
