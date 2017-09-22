`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:29:10 02/24/2015 
// Design Name: 
// Module Name:    dflipflop 
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
module dflipflop (Clk, Hold, Rst, Set, D, Q);

	input Clk, Hold, D;
	output Q;
	reg Q;
	input Rst, Set;
	
	always @(posedge Clk, Rst, Set)
	begin 
		if(Rst == 1)
		begin
			Q <= 0;
		end
		else if(Set == 1)
		begin
			Q <= 1;
		end
		else if(Hold == 1)
		begin
			Q <= Q;
		end
		else
			Q <= D;
	end

endmodule
