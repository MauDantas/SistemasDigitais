module contador4bits(count, in);
	input in;
	output reg [3:0] count;
	always@(posedge in)
		count=count+1;
endmodule
		