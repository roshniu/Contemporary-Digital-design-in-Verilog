module encoder_3bit (a,valid,Y);
input [2:0] a;
output [7:0] Y;
output valid;
reg [7:0] Y;
reg valid;

always @ (a) begin
	valid=1;
	case(a)
	0 : Y=8'b00000000;
	1 : Y=8'b00010001;
	2 : Y=8'b00010010;
	3 : Y=8'b00100010;
	4 : Y=8'b00100100;
	5 : Y=8'b01000100;
	6 : Y=8'b01001000;
	7 : Y=8'b10001000;
	default : valid=0;
endcase
end

endmodule


