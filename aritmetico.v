//modificado para git
//Quinta questão, circuito aritmetico
module aritmetico(s1, s0,cin, A, B, F);
	input s1,s0,cin;
	input[1:0]A,B;
	output [3:0]F;
	assign F= s1?(s0?((A+(~B)+cin):((~B)+cin)):(s0?(A+cin):(A+B+cin)));
endmodule
