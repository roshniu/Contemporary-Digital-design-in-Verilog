module encoder_5bit(a,valid,Y);
input [2:0] a;
output [4:0] Y;
output valid;
reg [4:0] Y;
reg valid;

always @ (a) begin
	valid=1;
	case(a)
		1: Y= 5'b00001;
		2: Y= 5'b00100;
		3: Y= 5'b00111;
		4: Y= 5'b01010;
		5: Y= 5'b01101;
		6: Y= 5'b10000;
		7: Y= 5'b10011;
		default: valid = 0;
	endcase
end
endmodule


