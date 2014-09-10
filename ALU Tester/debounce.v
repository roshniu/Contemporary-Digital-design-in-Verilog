
module debounce (pb, clock, deb_sw);
	input pb, clock;
	output reg deb_sw;
	reg  [7:0] count;
	reg state;
	always @(posedge clock) begin
		case( state)
		0: begin
			deb_sw=0;
			if(pb)count=count-1;
			else count=0;
			if(count>5) begin
			deb_sw=1;
			count=0;
			state=1;
			end
		   end

		1: begin 
			deb_sw=0;
			if(!pb)count=count-1;
			else count=0;
			if(count>5) begin
			deb_sw=0;
			count=0;
			state=0;
			end
		   end
		endcase
	end
endmodule