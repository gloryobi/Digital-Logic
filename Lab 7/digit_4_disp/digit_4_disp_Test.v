`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:23:34 03/27/2015 
// Design Name: 
// Module Name:    digit_4_disp_Test 
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
module digit_4_disp_Test();
	reg clk;
	wire a, b, c, d, e, f, g;
	wire D;
	wire n3, n2, n1, n0;
	wire [3:0]Q;
	
	digit_4_disp test1(clk, a, b, c, d, e, f, g, n3, n2, n1, n0, D, Q);
	
	always begin
    clk <= 0;
    #10;
    clk <= 1;
    #10;
	end


endmodule
