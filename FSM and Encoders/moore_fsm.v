
module moore_fsm (x, y, clk, rst, state);
	input x, clk, rst;
	output y; 
	output [2:0] state;
	reg y;
	reg [2:0] state;
	parameter S0 = 3'b000, S1 = 3'b001, S2 =3'b010, S3 = 3'b011,S4= 3'b100,S5= 3'b101,S6 = 3'b110,S7=3'b111;
always @ (posedge clk or posedge rst)
		if (rst) begin
			state = S0;
			y=0;
		end
		else
			case (state)
				S0: begin y = 0; if(x) state = S1; else state = S0;	end	
				S1: begin y=0 ; if(x) state = S2; else state = S0;end
				S2: begin y=0 ; if(x) state = S3; else state = S0;end
				S3: begin y=0 ; if(x) state = S3; else state = S4;end
				S4: begin
				        y = 1; 
				        if(x) state = S1; 
					    else state = S0;
				    end	
				S5: begin y=0; if(x) state = S0; else state = S0;end
				S6: begin y=0 ;if(x) state = S0; else state = S0;end
				S7: begin y=0;  if(x) state = S0; else state = S0;end
			endcase
endmodule
