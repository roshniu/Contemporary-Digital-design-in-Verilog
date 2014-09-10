module decoder_8bit(a,Y);
input [7:0] a;
output Y;

reg Y;

integer i;

always @ (a) begin
	Y=0;
	for ( i=7;i>0;i=i-1) 
		if ( (a[i]==1) && (a[i-1]==1)) begin
			 
				Y=1;
				end  ;
			
end	

endmodule

	