`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:24:12 02/03/2015 
// Design Name: 
// Module Name:    mux4x1 
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

module mux4x1(I3, I2, I1, I0, S1, S0, D);

	input I3, I2, I1, I0, S1, S0;
	output D;
	
	wire D1, D2;
	//assign D = (((I3*S1) + (I2*~S1))*S0) + (((I1*S1) + (I0*~S1))*~S0);
	mux2x1 M1(I3, I2, S0, D2);
	mux2x1 M2(I1, I0, S0, D1);
	mux2x1 M3(D2, D1, S1, D);
	
endmodule
