//Decodificador de display de sete segmentos com habilitador para mostrar sinal negativo

module decod7seg(a1,b1,c1,d1,e,f,g,dp, Sign, A,B,C,D);//as entradas em minusculo correspondem às saídas para o display de 7 segmentos 
	input A,B,C,D,Sign; //As entradas ABCD representam um numero binario BCD, Sign representa o bit de sinal
	output a1,b1,c1,d1,e,f,g,dp;// saídas para o diplay de sete segmentos
	
	assign {a1,b1,c1,d1,e,f,g,dp} = Sign?(8'b11111101):({A,B,C,D}==4'b0000)? //Quando o sinal for 1, o display ira mostrar o sinal negativo no lugar de qualquer numero
	(8'b00000011):({A,B,C,D}==4'b0001)?(8'b10011111):({A,B,C,D}==4'b0010)?(8'b00100101):({A,B,C,D}==4'b0011)?//tratamento padrão para o resto dos bits para display de sete segmentos
	(8'b00001101):({A,B,C,D}==4'b0100)?(8'b10011001):({A,B,C,D}==4'b0101)?(8'b01001001):
	({A,B,C,D}==4'b0110)?(8'b01000000):({A,B,C,D}==4'b0111)?(8'b00011111):
	({A,B,C,D}==4'b1000)?(8'b00000001):({A,B,C,D}==4'b1001)?(8'b00011001):(8'b11111111);

endmodule
	