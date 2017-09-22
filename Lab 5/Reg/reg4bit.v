`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:56:16 02/24/2015 
// Design Name: 
// Module Name:    reg4bit 
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
module reg4bit(Clk, Hold, Rst, Set, I, Q);

	input [3:0] I;
   output [3:0] Q;
	input Clk, Rst, Set, Hold;
	
	dflipflop instance1(Clk, Hold, Rst, Set, I[3], Q[3]);
	dflipflop instance2(Clk, Hold, Rst, Set, I[2], Q[2]);
	dflipflop instance3(Clk, Hold, Rst, Set, I[1], Q[1]);
	dflipflop instance4(Clk, Hold, Rst, Set, I[0], Q[0]);
	

endmodule
