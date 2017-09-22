//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:08:06 02/24/2015 
// Design Name: 
// Module Name:    reg4bittest 
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

`timescale 1ns / 1ns

module reg4bittest();

	reg Clk_s, Hold_s, Rst_s, Set_s;
	reg [3:0] I_s;
	wire [3:0] Q_s;
  
	reg4bit r1(Clk_s, Hold_s, Rst_s, Set_s, I_s, Q_s);
  
	always begin
		Clk_s <= 0;
		#10;
		Clk_s <= 1;
		#10;
	end
  
	initial begin
		Rst_s <= 1; 
		I_s <= 4'b0000;
		Set_s <= 0;
		Hold_s <= 0;
		@(posedge Clk_s);
		#5 Rst_s <= 0; Set_s <= 0; Hold_s <= 1; I_s <= 4'b1111;
		@(posedge Clk_s);
		#5 Rst_s <= 0; Set_s <= 0; Hold_s <= 0; I_s <= 4'b1111;
		@(posedge Clk_s);
		#5 Rst_s <= 0; Set_s <= 0; Hold_s <= 0; I_s <= 4'b1111;
		@(posedge Clk_s);
		#5 Rst_s <= 0; Set_s <= 0; Hold_s <= 1; I_s <= 4'b0000;
		#5 Rst_s <= 1; Set_s <= 0; Hold_s <= 0; I_s <= 4'b0000;
		#5 Rst_s <= 0; Set_s <= 1; Hold_s <= 0; I_s <= 4'b0000;
	end
	
endmodule
