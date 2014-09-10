module shift_control(R,DataIn,clk,clear ,load,AMT,SC);
input [width-1:0] DataIn;
input clk, clear, load;
input [1:0] SC;
input [2:0] AMT;
output wire [width-1:0]R;
reg[2:0] amount;
reg [1:0] shifting_type ;
parameter width = 8;

barrel_reg(R, DataIn, clk, clear, load, SC,AMT);

always @ (posedge clk ) begin
	if(load)begin 
		shifting_type<=SC;
		amount <= AMT;
	end else shifting_type <= 0;
end
endmodule
