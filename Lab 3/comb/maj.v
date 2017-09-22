`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:07:00 01/27/2015 
// Design Name: 
// MoDule Name:    maj 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// DepenDencies: 
//
// Revision: 
// Revision 0.01 - File CreateD
// ADDitional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module maj(a, b, c, F);

	input a, b, c;
	output F;
	// Implementation 1
	//assign F = (~a & b & c) | (a & ~b & c) | (a & b & ~c) | (a & b & c);
	
	// Implementation 2
	wire D0, D1, D2, D3, D4, D5, D6, D7;
	dec3x8 Dec4(a, b, c, D7, D6, D5, D4, D3, D2, D1, D0);
	assign F = D3 | D5 | D6 | D7;

endmodule
