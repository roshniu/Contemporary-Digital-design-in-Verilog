module comparator (clock, result, agrtb, aeqb, altb,result_alu, res_exp, ErrOut);
input clock;
input agrtb, altb, aeqb;
input [11:0] result;
output reg [14:0] result_alu;
input [14:0] res_exp;
output reg [7:0] ErrOut;

always @ ( posedge clock) begin

result_alu[11:0]=result[11:0];
result_alu[12]= altb;
result_alu[13]= aeqb;
result_alu[14]= agrtb;
	if ( result_alu == res_exp)
		ErrOut =8'h00000000;
	else if( result_alu != res_exp) begin ErrOut=8'hFFFFFFFF;end
	end
	endmodule 