`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:43:55 02/24/2015 
// Design Name: 
// Module Name:    reg4bitmux 
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
module reg4bitmux(Clk, Hold, Rst, Set, Q, S, D);
	
	input Clk, Hold, Rst, Set;
	input [3:0] D;
	output [3:0] Q;
	input [1:0] S;
	wire [3:0] N3;
	wire [3:0] N2;
	wire [3:0] N1;
	wire [3:0] N0;
	
	reg4bit reg1(Clk, Hold, Rst, Set, D, N3);
	reg4bit reg2(Clk, Hold, Rst, Set, N3, N2);
	reg4bit reg3(Clk, Hold, Rst, Set, N2, N1);
	reg4bit reg4(Clk, Hold, Rst, Set, N1, N0);

	mux4bit4x1 M1(N3, N2, N1, N0, S, Q);

endmodule
