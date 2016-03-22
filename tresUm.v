//Modulo que retorna se em um numero de oito bits ocorre a repetição '111'
module tresUm(a,b,c,d,e,f,g,h,y);
	input a,b,c,d,e,f,g,h;
	output y;
	assign y=(a&b&c)|(b&c&d)|(c&d&e)|(d&e&f)|(e&f&g)|(f&g&h);
endmodule