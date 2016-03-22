module calculadora(A,B,F,o1,o0);
	input [2:0]A,B;
	input o1,o0;
	output [6:0]F;
		
	assign F=o1?(o0?(A*B):(B-A)):(o0?(A-B):(A+B));
	
endmodule
