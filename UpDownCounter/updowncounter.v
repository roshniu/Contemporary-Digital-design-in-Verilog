module updowncounter(
	input [width-1:0]in_data,
	input clk, load, clear, cnt_enab,up_dn,
	output reg [width-1:0] out_data
	);
parameter width =8;
// input [ width-1:0] in_data;
// input clk, load,clear,cnt_enab,up_dn,
// output [ width-1:0] out_data;
// reg [idth-1:0] out_data, counter;

always @ (posedge clk )// begin
	if(clear) out_data=0;
	else if (load) out_data=in_data;
	else if ( cnt_enab) //begin
		if(up_dn) out_data=out_data+1;
		else out_data= out_data-1;
		//end 
//end
endmodule