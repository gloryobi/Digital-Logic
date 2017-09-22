`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:54:28 03/24/2015 
// Design Name: 
// Module Name:    counterTest 
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
module counterTest();

reg clk, cnt, clr, dir, ld;
reg L3, L2, L1, L0;
wire a, b, c, d, e, f, g;
wire tc;
wire [3:0] Q;
wire n3, n2, n1, n0;

counter test1(clk, cnt, clr, dir, ld, L3, L2, L1, L0, a, b, c, d, e, f, g, n3, n2, n1, n0, tc, Q);

always begin
    clk <= 0;
    #10;
    clk <= 1;
    #10;
end

initial begin
	L3 <= 1; L2 <= 0; L1 <= 0; L0 <= 0;
	clr <= 1; 
	cnt <= 0;
	dir <= 0;
	ld <= 0;
	
	@(posedge clk);
	#5 clr <= 0; cnt <= 0; dir <= 0; ld <= 0;
	L3 <= 1; L2 <= 0; L1 <= 0; L0 <= 0;
	@(posedge clk);
	#5 clr <= 0; cnt <= 0; dir <= 0; ld <= 1;
	L3 <= 1; L2 <= 0; L1 <= 0; L0 <= 0;
	@(posedge clk);
	#5 clr <= 0; cnt <= 1; dir <= 1; ld <= 0;
	L3 <= 1; L2 <= 0; L1 <= 0; L0 <= 0;
	@(posedge clk);
	#5 clr <= 0; cnt <= 1; dir <= 1; ld <= 0;
	@(posedge clk);
	#5 clr <= 1; cnt <= 0; dir <= 0; ld <= 0;
	@(posedge clk);
	#5 clr <= 0; cnt <= 1; dir <= 0; ld <= 0;
	@(posedge clk);
	#5 clr <= 0; cnt <= 1; dir <= 0; ld <= 0;
	@(posedge clk);
	#5 clr <= 0; cnt <= 1; dir <= 0; ld <= 0;
	@(posedge clk);
	#5 clr <= 0; cnt <= 0; dir <= 1; ld <= 1;
	@(posedge clk);
	#5 clr <= 0; cnt <= 1; dir <= 1; ld <= 0;
end 


endmodule
