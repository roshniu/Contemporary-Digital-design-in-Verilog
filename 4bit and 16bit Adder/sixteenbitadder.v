
module sixteenbitadder(A, B, cin, SUM, cout);
	input [15:0] A,B;
	input cin;
	output [15:0] SUM;
	output cout;
	wire c0,c1,c2;
	fourbitadder FA3(A[15:12], B[15:12], c2, SUM[15:12], cout);
	fourbitadder FA2(A[11:8], B[11:8], c1, SUM[11:8], c2);
	fourbitadder FA1(A[7:4], B[7:4], c0, SUM[7:4], c1);
	fourbitadder FA0(A[3:0], B[3:0], cin, SUM[3:0], c0);
endmodule
