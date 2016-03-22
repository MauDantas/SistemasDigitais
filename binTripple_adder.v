//soma 3 bits a, b e c e retorna em dois bits
module binTripple_adder(a,b,c, y,z);
	input a, b, c;
	output y, z;
	assign {y,z} = a+b+c;
endmodule
	