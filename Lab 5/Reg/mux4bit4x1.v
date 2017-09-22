`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:04 02/24/2015 
// Design Name: 
// Module Name:    mux4bit4x1 
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

module mux4bit4x1(I3, I2, I1, I0, S, D);

  input [3:0] I3, I2, I1, I0;
  input [1:0] S; 
  output [3:0] D;
  reg [3:0] D;
   
  always @ (*)
  begin
     if(S[1] == 0 && S[0] == 0) begin
	     D <= I0;
     end
     else if(S[1] == 0 && S[0] == 1) begin
  	   D <= I1;
     end
     else if(S[1] == 1 && S[0] == 0) begin
	     D <= I2;	
     end
     else begin
       D <= I3;
     end
  end

endmodule