module mux_output ( sw_in, a,b,mux_out);
input sw_in;
input [11:0] a;
input [11:0] b;
output reg [11:0] mux_out;

always @ (sw_in ) begin
if (sw_in==0)
	mux_out=a;
	else if (sw_in==1)begin 
	mux_out=b;end
end	
endmodule 
