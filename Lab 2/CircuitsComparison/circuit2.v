`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:22:12 01/20/2015 
// Design Name: 
// Module Name:    circuit2 
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
module circuit2(a, b, c, H);
	
	input a, b, c;
	output H;
	
	wire N1, N2, N3;

	or or1(H, N1, N2); 
	and and1(N1, a, b);
	and and2(N2, N3, c);
	not inv1(N3, b);
	
endmodule
