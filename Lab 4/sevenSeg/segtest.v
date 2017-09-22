`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:50:45 02/04/2015 
// Design Name: 
// Module Name:    segtest 
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

module segtest();

	reg w, x, y, z;
	wire a, b, c, d, e, f, g;
	
	seg7 test1(w, x, y, z, a, b, c, d, e, f, g);
	
	initial begin
		w <= 0; x <= 0; y <= 0; z <= 0;
		#10 w <= 0; x <= 0; y <= 0; z <= 1;
		#10 w <= 0; x <= 0; y <= 1; z <= 0;
		#10 w <= 0; x <= 0; y <= 1; z <= 1;
		#10 w <= 0; x <= 1; y <= 0; z <= 0;
		#10 w <= 0; x <= 1; y <= 0; z <= 1;
		#10 w <= 0; x <= 1; y <= 1; z <= 0;
		#10 w <= 0; x <= 1; y <= 1; z <= 1;
		#10 w <= 1; x <= 0; y <= 0; z <= 0;
		#10 w <= 1; x <= 0; y <= 0; z <= 1;
		#10 w <= 1; x <= 0; y <= 1; z <= 0;
		#10 w <= 1; x <= 0; y <= 1; z <= 1;
		#10 w <= 1; x <= 1; y <= 0; z <= 0;
		#10 w <= 1; x <= 1; y <= 0; z <= 1;
		#10 w <= 1; x <= 1; y <= 1; z <= 0;
		#10 w <= 1; x <= 1; y <= 1; z <= 1;
	end  


endmodule
