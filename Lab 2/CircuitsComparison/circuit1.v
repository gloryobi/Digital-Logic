`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:21:46 01/20/2015 
// Design Name: 
// Module Name:    circuit1 
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
`timescale 1 ns/1 ns

module circuit1(a, b, c, G);
	
	input a, b, c;
	output G;
	
	wire N1, N2, N3, N4, N5, N6, N7, N8;

	or or1(G, N1, N2, N3, N4); 
	and and1(N1, N5, N6, c);
	and and2(N2, a, N7, c);
	and and3(N3, a, b, N8);
	and and4(N4, a, b, c);
	not inv1(N5, a);
	not inv2(N6, b);
	not inv3(N7, b);
	not inv4(N8, c);
	
endmodule
