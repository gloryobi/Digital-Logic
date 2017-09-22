`timescale 1ns / 1ns

module seg7(w, x, y, z, a, b, c, d, e, f, g);

	input w, x, y, z;
	output a, b, c, d, e, f, g;
	
	assign a=	~((~w&~x&~y&~z)|
					(~w&~x&y&~z)|
					(~w&~x&y&z)|
					(~w&x&~y&z)|
					(~w&x&y&~z)|
					(~w&x&y&z)|
					(w&~x&~y&~z)|
					(w&~x&~y&z)|
					(w&~x&y&~z)|
					(w&x&~y&~z)|
					(w&x&y&~z)|
					(w&x&y&z));
	
	assign b=	~((~w&~x&~y&~z)|
					(~w&~x&~y&z)|
					(~w&~x&y&~z)|
					(~w&~x&y&z)|
					(~w&x&~y&~z)|
					(~w&x&y&z)|
					(w&~x&~y&~z)|
					(w&~x&~y&z)|
					(w&~x&y&~z)|
					(w&x&~y&z));
					
	assign c=	~((~w&~x&~y&~z)|
					(~w&~x&~y&z)|
					(~w&~x&y&z)|
					(~w&x&~y&~z)|
					(~w&x&~y&z)|
					(~w&x&y&~z)|
					(~w&x&y&z)|
					(w&~x&~y&~z)|
					(w&~x&~y&z)|
					(w&~x&y&~z)|
					(w&~x&y&z)|
					(w&x&~y&z));
					
	assign d=	~((~w&~x&~y&~z)|
					(~w&~x&y&~z)|
					(~w&~x&y&z)|
					(~w&x&~y&z)|
					(~w&x&y&~z)|
					(w&~x&~y&~z)|
					(w&~x&~y&z)|
					(w&~x&y&z)|
					(w&x&~y&~z)|
					(w&x&~y&z)|
					(w&x&y&~z));

	assign e=	~((~w&~x&~y&~z)|
					(~w&~x&y&~z)|
					(~w&x&y&~z)|
					(w&~x&~y&~z)|
					(w&~x&y&~z)|
					(w&~x&y&z)|
					(w&x&~y&~z)|
					(w&x&~y&z)|
					(w&x&y&~z)|
					(w&x&y&z));
					
	assign f=	~((~w&~x&~y&~z)|
					(~w&x&~y&~z)|
					(~w&x&~y&z)|
					(~w&x&y&~z)|
					(w&~x&~y&~z)|
					(w&~x&~y&z)|
					(w&~x&y&~z)|
					(w&x&~y&~z)|
					(w&x&~y&~z)|
					(w&x&y&~z)|
					(w&~x&y&z)|
					(w&x&y&z));
					
	assign g=	~((~w&~x&y&~z)|
					(~w&~x&y&z)|
					(~w&x&~y&~z)|
					(~w&x&~y&z)|
					(~w&x&y&~z)|
					(w&~x&~y&~z)|
					(w&~x&~y&z)|
					(w&~x&y&~z)|
					(w&~x&y&z)|
					(w&x&~y&z)|
					(w&x&y&~z)|
					(w&x&y&z));



endmodule
