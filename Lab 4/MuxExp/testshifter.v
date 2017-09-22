`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:31 02/03/2015 
// Design Name: 
// Module Name:    testshifter 
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

module testshifter();
  
  reg i3_s, i2_s, i1_s, i0_s, s1_s, s0_s;
  wire d3_s, d2_s, d1_s, d0_s;
  
  shifter s1(i3_s, i2_s, i1_s, i0_s, s1_s, s0_s, d3_s, d2_s, d1_s, d0_s);
  
  initial begin
    //Testing Hold
    s1_s <= 0; s0_s <= 0; i3_s <= 1; i2_s <= 1; i1_s <= 1; i0_s <= 1;
    #10 s1_s <= 0; s0_s <= 0; i3_s <= 1; i2_s <= 0; i1_s <= 1; i0_s <= 1;
    //Testing Shift Left
    #10 s1_s <= 0; s0_s <= 1; i3_s <= 1; i2_s <= 1; i1_s <= 1; i0_s <= 1;
    #10 s1_s <= 0; s0_s <= 1; i3_s <= 1; i2_s <= 0; i1_s <= 0; i0_s <= 1;
    #10 s1_s <= 0; s0_s <= 1; i3_s <= 0; i2_s <= 0; i1_s <= 0; i0_s <= 0;
    //Testing Shift Right
    #10 s1_s <= 1; s0_s <= 0; i3_s <= 1; i2_s <= 1; i1_s <= 1; i0_s <= 1;
    #10 s1_s <= 1; s0_s <= 0; i3_s <= 1; i2_s <= 0; i1_s <= 0; i0_s <= 1;
    #10 s1_s <= 1; s0_s <= 0; i3_s <= 0; i2_s <= 0; i1_s <= 0; i0_s <= 0;    
    //Testing Rotate
    #10 s1_s <= 1; s0_s <= 1; i3_s <= 1; i2_s <= 1; i1_s <= 1; i0_s <= 1;
    #10 s1_s <= 1; s0_s <= 1; i3_s <= 1; i2_s <= 0; i1_s <= 0; i0_s <= 1;
    #10 s1_s <= 1; s0_s <= 1; i3_s <= 1; i2_s <= 1; i1_s <= 0; i0_s <= 0;    
  end    
  
endmodule


