`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:50 01/27/2015 
// Design Name: 
// Module Name:    maj_test 
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

module maj_test();

	reg X_s, Y_s, Z_s;
	wire F_s;
	
	maj CompToTest(X_s, Y_s, Z_s, F_s);
	
	initial begin
		// Test all possible input combinations
		X_s <= 0; Y_s <= 0; Z_s <= 0;
		#10 X_s <= 0; Y_s <= 0; Z_s <= 1;
		#10 X_s <= 0; Y_s <= 1; Z_s <= 0;
		#10 X_s <= 0; Y_s <= 1; Z_s <= 1;
		#10 X_s <= 1; Y_s <= 0; Z_s <= 0;
		#10 X_s <= 1; Y_s <= 0; Z_s <= 1;
		#10 X_s <= 1; Y_s <= 1; Z_s <= 0;
		#10 X_s <= 1; Y_s <= 1; Z_s <= 1;
	end


endmodule
