`timescale 1ns / 1ps

module DownCounter(clk, a, b, c, d, e, f, g, n3, n2, n1, n0);

input clk;

output reg a, b, c, d, e, f, g;
output reg n3, n2, n1, n0;

reg [1:0] State, StateNext;
wire ClkOut;

clockdivider DUT(clk, ClkOut);

parameter W=0, X=1, Y=2, Z=3;

always@(State, ClkOut)
begin
	n3<=1; n2<=1; n1<=1; n0<=0;
	case (State)
		W: begin
			a<=0;b<=0;c<=0;d<=0;e<=1;f<=1;g<=0;
			if (ClkOut == 1)
				StateNext <= X;					
		end 
		X: begin
			a<=0;b<=0;c<=1;d<=0;e<=0;f<=1;g<=0;
			if (ClkOut == 1)
				StateNext <= Y;
		end
		Y: begin
			a<=1;b<=0;c<=0;d<=1;e<=1;f<=1;g<=1;
			if (ClkOut == 1)
				StateNext <= Z;
		end
		Z: begin
			a<=0;b<=0;c<=0;d<=0;e<=0;f<=0;g<=1;
			if (ClkOut == 1)
				StateNext <=W;
		end
		default: begin
			a<=0;b<=0;c<=0;d<=0;e<=1;f<=1;g<=0;
			StateNext<=W;
		end
	endcase
end
		
always @(posedge ClkOut)     
begin
	State <= StateNext; 
end
		
endmodule