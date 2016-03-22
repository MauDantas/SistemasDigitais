module mux2x1(seletor, e1,e0, saida);
	input seletor, e1,e0;
	output saida;
	assign saida= seletor?e1:e0;
endmodule;