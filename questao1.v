module questao1(A2,A1,A0,B2,B1,B0,o1,o0,a,b,c,d,e,f,g,dp,S,AN0,AN1,AN2,AN3);
	
	input A2,A1,A0,B2,B1,B0,o1,o0,S;
	wire stayPositive;
	output a,b,c,d,e,f,g,dp;
	wire [2:0] A,B;
	wire [3:0] d,u;
	output AN0,AN1,AN2,AN3;
	wire saida,sinal;
	
	buf bu(stayPositive, 1'b0);
	
	assign A={A2,A1,A0};
	assign B={B2,B1,B0};
	calculadoraBCD CALC(A,B,d,u,o1,o0,sinal);
	Decod1x2 DECOD(S,AN0,AN1,AN2,AN3); //Controle dos siplays de sete segmentos a serem ligados
	
	decod7seg SEGNENTOS(a,b,c,d,e,f,g,dp, mux2x1(S, sinal,stayPositive, saida), mux2x1(S, d[3],u[3], saida),mux2x1(S, d[2],u[2], saida),mux2x1(S, d[1],u[1], saida),mux2x1(S, d[0],u[0], saida));
endmodule