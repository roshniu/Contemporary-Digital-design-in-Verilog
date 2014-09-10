module fourbitadder(A, B, cin, SUM, cout);
	input [3:0] A,B;
	input cin;
	output [3:0] SUM;
	output cout;
	wire c0,c1,c2;
	fulladderonebit FA3(A[3], B[3], c2, SUM[3], cout);
	fulladderonebit FA2(A[2], B[2], c1, SUM[2], c2);
	fulladderonebit FA1(A[1], B[1], c0, SUM[1], c1);
	fulladderonebit FA0(A[0], B[0], cin, SUM[0], c0);
endmodule