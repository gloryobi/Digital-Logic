`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:20:22 03/03/2015 
// Design Name: 
// Module Name:    movsevsegtest 
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
module movsevsegtest();

	reg w, x, y, z;
	wire a, b, c, d, e, f, g, n3, n2, n1, n0;
	
	reg clk0, rst, button;
	
	movsevseg test1(clk0, rst, button, w, x, y, z, a, b, c, d, e, f, g, n3, n2, n1, n0);
	
	always begin
    clk0 <= 0;
    #10;
    clk0 <= 1;
    #10;
	end
  
	initial begin
		rst <= 1; 
		w <= 1; x <= 0; y <= 0; z <= 0;
		button <= 0;
		@(posedge clk0);
		#5 rst <= 0; button <= 1;
		@(posedge clk0);
		#5 rst <= 0; button <= 1;
		@(posedge clk0);
		#5 rst <= 0; button <= 1;
		@(posedge clk0);
		#5 rst <= 0; button <= 1;
		@(posedge clk0);
		#5 rst <= 1; button <= 0;
		@(posedge clk0);
		#5 rst <= 1; button <= 1;
		@(posedge clk0);
		#5 rst <= 0; button <= 0;
		@(posedge clk0);
		#5 rst <= 0; button <= 0;
		@(posedge clk0);
		#5 rst <= 0; button <= 0;
		@(posedge clk0);
		#5 rst <= 0; button <= 0;
	end  


endmodule

/*always begin
    Clk_s <= 0;
    #10;
    Clk_s <= 1;
    #10;
  end
  
  initial begin
    Rst_s <= 1; 
    D_s <= 0;
    Set_s <= 0;
    Hold_s <= 0;
    @(posedge Clk_s);
    #5 Rst_s <= 0; Set_s <= 0; Hold_s <= 1; D_s <= 1;
    @(posedge Clk_s);
    #5 Rst_s <= 0; Set_s <= 0; Hold_s <= 0; D_s <= 1;
    @(posedge Clk_s);
    #5 Rst_s <= 0; Set_s <= 0; Hold_s <= 0; D_s <= 1;
    @(posedge Clk_s);
    #5 Rst_s <= 0; Set_s <= 0; Hold_s <= 1; D_s <= 0;
    #5 Rst_s <= 1; Set_s <= 0; Hold_s <= 0; D_s <= 0;
    #5 Rst_s <= 0; Set_s <= 1; Hold_s <= 0; D_s <= 0;
  end    
  
endmodule
*/