module hex_to_7_seg(hex, segments);
	input [3:0]hex;
	output reg [6:0] segments;
	always @(hex) begin
		case (hex)
			0:segments = 7'h40;
			1:segments = 7'h79;
			2:segments = 7'h24;
			3:segments = 7'h30;
			4:segments = 7'h19;
			5:segments = 7'h12;
			6:segments = 7'h02;
			7:segments = 7'h78;
			8:segments = 7'h00;
			9:segments = 7'h10;
			10:segments = 7'h08;
			11:segments = 7'h03;
			12:segments = 7'h46;
			13:segments = 7'h21;
			14:segments = 7'h06;
			15:segments = 7'h0e;
		endcase
	end
endmodule

