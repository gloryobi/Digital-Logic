`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:49 01/27/2015 
// Design Name: 
// Module Name:    voting 
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
module voting(s2, s1, s0, t, p, G);

input s2, s1, s0, t, p;
output G;

//Implementation 1 (Not 100% Correct)
/*assign G = (~s2 & ~s1 & s0 & t & p)   //00111
			| (~s2 & s1 & ~s0 & t & p)   //01011
			| (~s2 & s1 & s0 & ~t & p)   //01101
			| (~s2 & s1 & s0 & t & ~p)   //01110
			| (~s2 & s1 & s0 & t & p)    //01111
			| (s2 & ~s1 & ~s0 & t & p)   //10011
			| (s2 & ~s1 & s0 & ~t & p)   //10101
			| (s2 & ~s1 & s0 & t & ~p)   //10110
			| (s2 & ~s1 & s0 & t & p)    //10111
			| (s2 & s1 & ~s0 & ~t & p)   //11001
			| (s2 & s1 & ~s0 & t & ~p)   //11010
			| (s2 & s1 & ~s0 & t & p)    //11011
			| (s2 & s1 & s0 & ~t & ~p)   //11100
			| (s2 & s1 & s0 & ~t & p)    //11101
			| (s2 & s1 & s0 & t & ~p)    //11110
			| (s2 & s1 & s0 & t & p);    //11111*/
			
//Implementation 2 (Correct Implementaion)
wire Sx;
maj Stu(s2, s1, s0, Sx);
maj All(Sx, t, p, G);

endmodule
