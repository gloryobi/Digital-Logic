`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:22:45 01/20/2015 
// Design Name: 
// Module Name:    testbench 
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

module testbench();

	reg X_s, Y_s, Z_s;
	wire G_s, H_s;
	
	circuit1 CompToTest(X_s, Y_s, Z_s, G_s);
	circuit2 CompToTest1(X_s, Y_s, Z_s, H_s);
	
	initial begin
		// Test all possible input combinations
		Y_s <= 0; X_s <= 0; Z_s <= 0;
		#10 Y_s <= 1; X_s <= 0; Z_s <= 0;
		#10 Y_s <= 0; X_s <= 1; Z_s <= 0;
		#10 Y_s <= 0; X_s <= 0; Z_s <= 1;
		#10 Y_s <= 1; X_s <= 1; Z_s <= 0;
		#10 Y_s <= 1; X_s <= 0; Z_s <= 1;
		#10 Y_s <= 0; X_s <= 1; Z_s <= 1;
		#10 Y_s <= 1; X_s <= 1; Z_s <= 1;
	end


endmodule
