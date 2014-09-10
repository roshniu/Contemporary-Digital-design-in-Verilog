module addr_cnt ( pb,addr);

input pb;
output reg [ 3:0] addr;

always @(posedge pb)
	addr=addr+1;
	
endmodule


