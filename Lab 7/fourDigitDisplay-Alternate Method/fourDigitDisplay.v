`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:11:09 04/12/2016 
// Design Name: 
// Module Name:    fourDigitDisplay 
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
module fourDigitDisplay(clk, a, b, c, d, e, f, g, n3, n2, n1, n0);
input clk;
output  a, b, c, d, e, f, g, n3, n2, n1, n0;
reg l,m,n,p;
reg [3:0] Q=0;
reg [3:0] R=0;
reg [3:0] P=0;
reg tc;
wire ClkOut;

clockdivider clock(clk, ClkOut);

SevenSeg seg(R[3], R[2], R[1], R[0],a,b,c,d,e,f,g,n3,n2,n1,n0,P[0],P[1],P[2],P[3]);

always @(posedge ClkOut)begin
	if(tc==0) Q<= Q-1;
	else Q<=4'd3;
	if(Q==0)begin
	P[0]<=0;
	P[1]<=1;
	P[2]<=1;
	P[3]<=1;
	R<=1;
	end
	else if(Q==1)begin
	P[0]<=1;
	P[1]<=0;
	P[2]<=1;
	P[3]<=1;
	R<=2;
	end
	else if(Q==2)begin
	P[0]<=1;
	P[1]<=1;
	P[2]<=0;
	P[3]<=1;
	R<=3;
	end
	else if(Q==3)begin
	P[0]<=1;
	P[1]<=1;
	P[2]<=1;
	P[3]<=0;
	R<=4;
	end
	

end

always @(posedge ClkOut)
	begin
		if(Q==0)
		tc<=1;
		else 
		tc<=0;
	end


endmodule
