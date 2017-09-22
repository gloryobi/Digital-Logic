`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:55 02/24/2015 
// Design Name: 
// Module Name:    reg4bitmuxtest 
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
module reg4bitmuxtest();

	reg Clk_s, Hold_s, Rst_s, Set_s;
	wire [3:0] Q0_s;
	reg [1:0] S_s;
	reg [3:0] D_s;
	
	reg4bitmux r1(Clk_s, Hold_s, Rst_s, Set_s, Q0_s, S_s, D_s);
	
	always begin
		Clk_s <= 0;
		#10;
		Clk_s <= 1;
		#10;
	end
	
	initial begin
		Rst_s <= 1; 
		D_s <= 4'b0000;
		Set_s <= 0;
		Hold_s <= 0;
		S_s <= 2'b00;

		@(posedge Clk_s);
		#5 Rst_s <= 0; Set_s <= 0; Hold_s <= 1; D_s <= 4'b1111;
		@(posedge Clk_s);
		#5 Rst_s <= 0; Set_s <= 0; Hold_s <= 0; D_s <= 4'b1101;
		@(posedge Clk_s);
		#5 Rst_s <= 0; Set_s <= 0; Hold_s <= 0; D_s <= 4'b1011;
		@(posedge Clk_s);
		#5 Rst_s <= 0; Set_s <= 0; Hold_s <= 1; D_s <= 4'b1000;
		#5 Rst_s <= 1; Set_s <= 0; Hold_s <= 0; D_s <= 4'b0100;
		#5 Rst_s <= 0; Set_s <= 1; Hold_s <= 0; D_s <= 4'b0010;
		
		#5 S_s <= 2'b00; D_s <= 4'b0000;
		#5 S_s <= 2'b01; D_s <= 4'b0000;
		#5 S_s <= 2'b10; D_s <= 4'b0000;
		#5 S_s <= 2'b11; D_s <= 4'b1111;

	end
endmodule
