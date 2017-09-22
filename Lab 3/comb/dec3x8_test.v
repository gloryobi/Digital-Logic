`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:02:19 01/13/2015 
// Design Name: 
// Module Name:    myandgatetest 
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

module dec3x8_test();

	reg X_s, Y_s, Z_s;
	wire D0_s, D1_s, D2_s, D3_s, D4_s, D5_s, D6_s, D7_s;
	
	dec3x8 CompToTest(X_s, Y_s, Z_s, D0_s, D1_s, D2_s, D3_s, D4_s, D5_s, D6_s, D7_s);
	
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