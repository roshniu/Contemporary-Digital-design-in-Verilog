module main_test ( clock, sw_in, pb,agrtb,altb,aeqb, data_mux1, data_mux2, data_mux3, data_result1, 
data_result2,data_result3,data_funct,data_testno, ErrOut);
input clock;
input sw_in;
input pb;
output  [6:0] data_mux1,data_mux2,data_mux3;
output [6:0] data_result1,data_result2, data_result3;
output [6:0] data_funct, data_testno;
wire [11:0] mux_out;
wire [14:0] result_alu;
wire [11:0] result;
wire [3:0] addr;
wire signed[11:0] a;
wire signed[11:0] b;
wire [3:0] sel;
wire [14:0] res_exp;
output wire [7:0] ErrOut;
output wire agrtb,altb,aeqb;


a_rom_mem	a_rom_mem_inst (
	.clock ( clock ),
	.data ( 0 ),
	.rdaddress ( addr ),
	.wraddress ( 0 ),
	.wren ( 0 ),
	.q ( a )
	);


b_rom_mem	b_rom_mem_inst (
	.clock ( clock ),
	.data (0 ),
	.rdaddress ( addr ),
	.wraddress (0 ),
	.wren (0 ),
	.q ( b )
	);
funct_rom_mem	funct_rom_mem_inst (
	.clock ( clock ),
	.data ( 0 ),
	.rdaddress ( addr ),
	.wraddress ( 0 ),
	.wren ( 0 ),
	.q ( sel )
	);
result_rom_mem	result_rom_mem_inst (
	.clock ( clock ),
	.data ( 0 ),
	.rdaddress ( addr ),
	.wraddress ( 0),
	.wren (0 ),
	.q ( res_exp )
	);


//debounce db1(pb, clock, deb_sw);

addr_cnt ac1( pb,addr);

alu_a5 alu1(a,b,sel,agrtb,altb,aeqb,result);

comparator cmp1(clock,result, agrtb, aeqb, altb,result_alu, res_exp, ErrOut);

mux_output mo1(sw_in,a,b ,mux_out);

hex_to_7_seg h1(mux_out[3:0],data_mux1);

hex_to_7_seg h2(mux_out[7:4],data_mux2);

hex_to_7_seg h3(mux_out[11:7],data_mux3);

hex_to_7_seg h4(result[3:0],data_result1);

hex_to_7_seg h5(result[7:4],data_result2);

hex_to_7_seg h6(result[11:8],data_result3);

hex_to_7_seg h7(sel,data_funct);

hex_to_7_seg h8(addr,data_testno);

endmodule
