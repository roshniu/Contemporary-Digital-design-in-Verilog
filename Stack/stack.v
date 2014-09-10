module stack(data_in, push, pop, clock, data_out, error, mem_full, mem_empty );
	input [7:0] data_in;
	output [7:0] data_out;
	input clock, push, pop;
	output mem_full=0, mem_empty=1;
	output error;
	reg[7:0] data_out;
	reg mem_full, mem_empty, error;
	reg[7:0] point=0;
	reg wren;
ram_stack_rw	ram_stack_rw_inst (
	.clock ( clock ),
	.data ( data_in ),
	.rdaddress ( point ),
	.wraddress (point ),
	.wren ( wren ),
	.q ( data_out )
	);	


always@(posedge clock) begin
 

	if(push && !pop) begin 
		
		if(!mem_full) begin
			wren=1;
			point=point+1;
			mem_empty=0;
			error=0;
			if(point==7)begin 
				mem_full=1;
				wren=0;end
			end 
		else error=1;
	end

	if(!push && pop) begin
		wren=0;
		if(!mem_empty)begin
			point=point-1;
		
			mem_full=0;
			error=0;
			if(point==0)mem_empty=1;
	end
	else error=1;
	end
end
endmodule 