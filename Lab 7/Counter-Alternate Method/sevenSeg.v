`timescale 1ns / 1ps

module sevenSeg(w, x, y, z, a, b, c, d, e, f, g, n0, n1, n2, n3);

	input w, x, y, z;
	output a, b, c, d, e, f, g, n0, n1, n2, n3;
	
	assign n0 =0;
	assign n1 =1;
	assign n2 =1;
	assign n3 =1;
	
	seg7 s(w, x, y, z, a, b, c, d, e, f, g);


endmodule