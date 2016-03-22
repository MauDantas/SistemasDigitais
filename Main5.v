//Main da quinta questão
module Main5(s1,s0,A,B,cin,a,b,c,d,e,f,g);
	input A,B,cin;
	wire [3:0]F;
	output a,b,c,d,e,f,g;
	aritmetico(s1, s0,cin, A, B, F);
	decodificadorBCD7Seg(F[3], F[2],F[1], F[0], a, b, c, d, e, f, g);
endmodule