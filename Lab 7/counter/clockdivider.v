`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:55:28 03/03/2015 
// Design Name: 
// Module Name:    clockdivider 
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
`timescale 1ns / 1ns
/*
 * Design: ECE 274 - Clock Divider generating 1 Hz clock output from 50 MHz input clock
 * Author: Roman Lysecky 
 * Copyright 2008, All Rights Reserved
 *
 * Date: August 19, 2008
 *
 */
module clockdivider(Clk, ClkOut);
   input Clk;
   output reg ClkOut;
  
   parameter DivVal = 10000000; //25000000;
   reg[24:0] DivCnt;
   reg ClkInt;
	
   always @(posedge Clk) begin
		if( DivCnt == DivVal ) begin
			ClkOut <= ~ClkInt;
         ClkInt <= ~ClkInt;
         DivCnt <= 0;
      end
      else begin
			ClkOut <= ClkInt;
         ClkInt <= ClkInt;
         DivCnt <= DivCnt + 1;
      end
   end
endmodule

