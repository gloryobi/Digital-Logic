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

module myandgatetest();

	reg X_s, Y_s;
	wire F_s;
	
	myandgate CompToTest(X_s, Y_s, F_s);
	
	initial begin
		// Test all possible input combinations
		Y_s <= 0; X_s <= 1;
		#10 Y_s <= 0; X_s <= 1;
		#10 Y_s <= 1; X_s <= 0;
		#10 Y_s <= 1; X_s <= 1;
	end


endmodule
