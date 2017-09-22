`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:52:49 03/24/2015 
// Design Name: 
// Module Name:    digit_4_disp 
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
module digit_4_disp(clk, a, b, c, d, e, f, g, /*n3, n2, n1, n0,*/ D, Q);

	input clk;
	output a, b, c, d, e, f, g;
	output D;
	/*output n3;
	output n2;
	output n1;
	output n0;*/
	output [3:0]Q;
	wire clk0;
	
	clockdivider C1(clk, clk0);
	
	//timer T1(clk0, a, b, c, d, e, f, g, n3, n2, n1, n0, Q);
	assign Q =  4'b0001;
	
	seg7 S1(Q[3], Q[2], Q[1], Q[0], a, b, c, d, e, f, g);

	//mux4x1 mux1(n3, n2, n1, n0, Q[1], Q[0], D);

endmodule
