module decodificadorBCD7Seg(e3, e2, e1, e0, a, b, c, d, e, f, g);
	input e3, e2, e1, e0;
	output a, b, c, d, e, f, g;
	wire [7:0] w;
	
	//codifica entrada para bcd
	buf (w[0], e0);
	buf (w[1], e1);
	buf (w[2], e2);
	buf (w[3], e3);
	codificadorBCD8bits cbcd8b (.bin(w[3:0]), .unidades(w[7:4]));
	
	//decodifica bcd gerado para display de 7 segmentos
	decodificador7seg d7s (.e0(w[4]), .e1(w[5]), .e2(w[6]), .e3(w[7]), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g));
	
endmodule
