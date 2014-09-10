module funct_rom (

	input clock, 
	output  [3:0] sel,
	input [3:0] addr
	);

funct_rom_mem	funct_rom_mem_inst (
	.clock ( clock ),
	.data ( 0 ),
	.rdaddress ( addr ),
	.wraddress ( 0 ),
	.wren ( 0 ),
	.q ( sel )
	);



endmodule

