`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:06:26 02/03/2015 
// Design Name: 
// Module Name:    shifter 
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

`timescale 10 ns/1 ns
module shifter(i3, i2, i1, i0, s1, s0, d3, d2, d1, d0);

	input i3, i2, i1, i0, s1, s0;
	output d3, d2, d1, d0;
	                                                         //Same              // << Left   // >> right    //rotate right
	mux4x1 instance1(i0, 0, i2, i3, s1, s0, d3);   //when 00 output will be i3    //01 - i2    //10 - 0       //11 - i0 
	mux4x1 instance2(i3, i3, i1, i2, s1, s0, d2);  //when 00 output will be i2    //01 - i1    //10 - i3      //11 - i1 
	mux4x1 instance3(i2, i2, i0, i1, s1, s0, d1);  //when 00 output will be i1    //01 - i0    //10 - i2      //11 - i2 
	mux4x1 instance4(i1, i1, 0, i0, s1, s0, d0);   //when 00 output will be i0    //01 - 0     //10 - i1      //11 - i3 
	
endmodule

