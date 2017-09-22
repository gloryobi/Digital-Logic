`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:32:16 01/27/2015 
// Design Name: 
// Module Name:    dec3x8 
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
module dec3x8(i2, i1, i0, d7, d6, d5, d4, d3, d2, d1, d0);

input i2, i1, i0;
output d7, d6, d5, d4, d3, d2, d1, d0;

assign d0 = ~i2 & ~i1 & ~i0;
assign d1 = ~i2 & ~i1 & i0;
assign d2 = ~i2 & i1 & ~i0;
assign d3 = ~i2 & i1 & i0;
assign d4 = i2 & ~i1 & ~i0;
assign d5 = i2 & ~i1 & i0;
assign d6 = i2 & i1 & ~i0;
assign d7 = i2 & i1 & i0;

endmodule
