`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:04:13 03/01/2016 
// Design Name: 
// Module Name:    SevenSeg 
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
module SevenSeg(w, x, y, z, a, b, c, d, e, f, g, n3, n2, n1, n0);

	input w, x, y, z;
	output a, b, c, d, e, f, g;
	output n3, n2, n1, n0;
	
	seg7 instance1(w, x, y, z, a, b, c, d, e, f, g);
	
	assign n3 = 1;
	assign n2 = 1;
	assign n1 = 1;
	assign n0 = 0;

endmodule
