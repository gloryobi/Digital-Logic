`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:41 01/20/2015 
// Design Name: 
// Module Name:    ds_system 
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

module ds_system(S, M, B, L);

	input S, M;
	output B, L;
	
	wire N1;
	
	and and1(L, S, M);
	and and2(B, S, N1);
	not inv1(N1, M);

endmodule
