`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:04 01/20/2015 
// Design Name: 
// Module Name:    disco_test 
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
	`timescale 10 ns/10 ns

module disco_test();

	reg X_s, Y_s;
	wire B_s, L_s;
	
	ds_system CompToTest(X_s, Y_s, B_s, L_s);
	
	initial begin
		// Test all possible input combinations
		Y_s <= 0; X_s <= 0;
		#10 Y_s <= 0; X_s <= 1;
		#10 Y_s <= 1; X_s <= 0;
		#10 Y_s <= 1; X_s <= 1;
	end

endmodule