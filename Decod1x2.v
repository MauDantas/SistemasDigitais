//modulo seletor entre dois displays de sete segmentos
module Decod1x2(S,AN0,AN1,AN2,AN3);
	input S;
	output AN0,AN1,AN2,AN3; 
	assign {AN0,AN1,AN2,AN3}=S?(4'b1011):(4'b0111);
	
endmodule
