`timescale 1ns / 1ps

module counter(clk, cnt, clr, ld, L3, L2, L1, L0, dir, a, b, c, d, e, f, g, n3, n2, n1, n0, tc);

input clk, clr, cnt, dir, ld, L3, L2, L1, L0;

output reg a,b,c,d,e,f,g,tc,n3,n2,n1,n0;
reg [3:0] Q;
reg [3:0] State, StateNext;
wire ClkOut;

clockdivider DUT(clk, ClkOut);

parameter A=0, B=1, C=2, D=3, E=4, F=5, G=6, H=7, I=8, J=9, K=10, L=11, M=12, N=13, O=14, P=15;

//combinational logic
	always @(State, ld, cnt, dir, L3, L2, L1, L0)
	begin
			n3 <= 1;
			n2 <= 1;
			n1 <= 1;
			n0 <= 0;
			a<=1;
			b<=1;
			c<=1;
			d<=1;
			e<=1;
			f<=1;
			g<=1;
			//tc<=0;
			Q[3] <=L3;
			Q[2] <=L2;
			Q[1] <=L1;
			Q[0] <=L0;
			case (State)
			A: begin //0
				a<=0;
				b<=0;
				c<=0;
				d<=0;
				e<=0;
				f<=0;
				g<=1;
				//tc<=0;
				if (ld == 1)
					StateNext <= Q;
				else if (cnt == 0)
						StateNext <= A;
				else if (dir == 1) begin
					//tc<=1;
					if (cnt ==1)
						StateNext<=P;
				end
				else if(cnt == 1)
					StateNext <= B;
				end			
			B: begin //1
				a<=1;
				b<=0;
				c<=0;
				d<=1;
				e<=1;
				f<=1;
				g<=1;
				//tc<=0;
				if (ld == 1)
					StateNext <= Q;
				else if (cnt == 0)
						StateNext <= B;
					else if (dir == 1 && cnt ==1)
					StateNext<=A;
					else if(cnt == 1)
					StateNext <= C;
				end
			C: begin //2
				a<=0;
				b<=0;
				c<=1;
				d<=0;
				e<=0;
				f<=1;
				g<=0;
				//tc<=0;
				if (ld == 1)
					StateNext <= Q;
				else if (cnt == 0)
						StateNext <= C;
					else if (dir == 1 && cnt ==1)
					StateNext<=B;
					else if(cnt == 1)
					StateNext <= D;
				end
			D: begin //3
				a<=0;
				b<=0;
				c<=0;
				d<=0;
				e<=1;
				f<=1;
				g<=0;
				//tc<=0;
				if (ld == 1)
					StateNext <= Q;
				else if (cnt == 0)
						StateNext <= D;
					else if (dir == 1 && cnt ==1)
					StateNext<=C;
					else if(cnt == 1)
					StateNext <= E;
				end
			E: begin //4
				a<=1;
				b<=0;
				c<=0;
				d<=1;
				e<=1;
				f<=0;
				g<=0;
				//tc<=0;
				if (ld == 1)
					StateNext <= Q;
				else if (cnt == 0)
						StateNext <=E;
					else if (dir == 1 && cnt ==1)
					StateNext<=D;
					else if(cnt == 1)
					StateNext <= F;
				end
			F: begin //5
				a<=0;
				b<=1;
				c<=0;
				d<=0;
				e<=1;
				f<=0;
				g<=0;
				//tc<=0;
				if (ld == 1)
					StateNext <= Q;
				else if (cnt == 0)
						StateNext <= F;
					else if (dir == 1 && cnt ==1)
					StateNext<=E;
					else if(cnt == 1)
					StateNext <= G;
				end
			G: begin //6
				a<=0;
				b<=1;
				c<=0;
				d<=0;
				e<=0;
				f<=0;
				g<=0;
				//tc<=0;
				if (ld == 1)
					StateNext <= Q;
				else if (cnt == 0)
						StateNext <= G;
					else if (dir == 1 && cnt ==1)
					StateNext<=F;
					else if(cnt == 1)
					StateNext <= H;
				end
			H: begin //7
				a<=0;
				b<=0;
				c<=0;
				d<=1;
				e<=1;
				f<=1;
				g<=1;
				//tc<=0;
				if (ld == 1)
					StateNext <= Q;
				else if (cnt == 0)
						StateNext <= H;
					else if (dir == 1 && cnt ==1)
					StateNext<=G;
					else if(cnt == 1)
					StateNext <= I;
				end
			I: begin //8
				a<=0;
				b<=0;
				c<=0;
				d<=0;
				e<=0;
				f<=0;
				g<=0;
				//tc<=0;
				if (ld == 1)
					StateNext <= Q;
				else if (cnt == 0)
						StateNext <= I;
					else if (dir == 1 && cnt ==1)
					StateNext<=H;
					else if(cnt == 1)
					StateNext <= J;
				end
			J: begin //9
				a<=0;
				b<=0;
				c<=0;
				d<=0;
				e<=1;
				f<=0;
				g<=0;
				//tc<=0;
				if (ld == 1)
					StateNext <= Q;
				else if (cnt == 0)
						StateNext <= J;
					else if (dir == 1 && cnt ==1)
					StateNext<=I;
					else if(cnt == 1)
					StateNext <= K;
				end
			K: begin //A
				a<=0;
				b<=0;
				c<=0;
				d<=1;
				e<=0;
				f<=0;
				g<=0;
				//tc<=0;
				if (ld == 1)
					StateNext <= Q;
				else if (cnt == 0)
						StateNext <= K;
					else if (dir == 1 && cnt ==1)
					StateNext<=J;
					else if(cnt == 1)
					StateNext <= L;
				end
			L: begin //b
				a<=1;
				b<=1;
				c<=0;
				d<=0;
				e<=0;
				f<=0;
				g<=0;
				//tc<=0;
				if (ld == 1)
					StateNext <= Q;
				else if (cnt == 0)
						StateNext <= L;
					else if (dir == 1 && cnt ==1)
					StateNext<=K;
					else if(cnt == 1)
					StateNext <= M;
				end
			M: begin //C
				a<=0;
				b<=1;
				c<=1;
				d<=0;
				e<=0;
				f<=0;
				g<=1;
				//tc<=0;
				if (ld == 1)
					StateNext <= Q;
				else if (cnt == 0)
						StateNext <= M;
					else if (dir == 1 && cnt ==1)
					StateNext<=L;
					else if(cnt == 1)
					StateNext <= N;
				end
			N: begin //d
				a<=1;
				b<=0;
				c<=0;
				d<=0;
				e<=0;
				f<=1;
				g<=0;
				//tc<=0;
				if (ld == 1)
					StateNext <= Q;
				else if (cnt == 0)
						StateNext <= N;
					else if (dir == 1 && cnt ==1)
					StateNext<=M;
					else if(cnt == 1)
					StateNext <= O;
				end
			O: begin //E
				a<=0;
				b<=1;
				c<=1;
				d<=0;
				e<=0;
				f<=0;
				g<=0;
				//tc<=0;
				if (ld == 1)
					StateNext <= Q;
				else if (cnt == 0)
					StateNext <= O;
				else if (dir == 1 && cnt ==1)
					StateNext<=N;
				else if(cnt == 1)
					StateNext <= P;
			end
			P: begin //F
				a<=0;
				b<=1;
				c<=1;
				d<=1;
				e<=0;
				f<=0;
				g<=0;
				//tc<=0;
				if (ld == 1)
					StateNext <= Q;
				else if (cnt == 0)
					StateNext <= P;
				else if (dir == 1 && cnt ==1)
					StateNext<=O;
				else if(dir == 0) begin
					//tc<=1;
						if (cnt == 1)
						StateNext <= A;
				end
			end
			default:
			begin
				a<=0;
				b<=0;
				c<=0;
				d<=0;
				e<=0;
				f<=0;
				g<=1;
				StateNext<=A;
			end
			endcase
		end
			
		always @(posedge ClkOut)     
		begin     
			if (clr == 1 )		
				State <= A;
			else
				State <= StateNext;
			
			if((State == A && dir == 1) | (State == P && dir == 0))
				tc <= 1;
			else
				tc <= 0;
				
		end
endmodule