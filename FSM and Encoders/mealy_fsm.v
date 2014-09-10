
module mealy_fsm (x, y, clk, rst, state);
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
				S0: begin if(x) begin y = 0; state = S0;end else state = S1;	end	
				S1: begin if(x)begin  y= 0; state = S0;end else state = S2;end
				S2: begin if(x)begin y=0; state = S0; end else state = S3;end
				S3: begin if(x) begin y=0; state = S4; end else state = S3;end
				S4: begin
				     
				        if(x) begin y = 1;state = S0; 
					    end else state = S1;
				    end	
				S5: begin if(x)begin y=0 ; state = S0;end  else state = S0;end
				S6: begin if(x) begin y=0; state = S0; end else state = S0;end
				S7: begin if(x) begin y=0 ; state = S0; end else state = S0;end
			endcase
endmodule

