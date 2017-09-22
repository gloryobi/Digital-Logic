`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:06:27 03/24/2015 
// Design Name: 
// Module Name:    timerTest 
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
module timerTest();

reg clk;
wire a, b, c, d, e, f, g;
wire n3, n2, n1, n0;
wire tc;
//reg [3:0]Q;

timer test1(clk, a, b, c, d, e, f, g, n3, n2, n1, n0, tc);

always begin
    clk <= 0;
    #10;
    clk <= 1;
    #10;
end

initial begin
	//Q <= 0;
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
end

endmodule
