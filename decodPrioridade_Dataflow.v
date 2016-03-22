//Decodificador de prioridade de 7 entradas e tres saídas com aviso h de que nenhuma chave está sendo usada
module decodPrioridade_Dataflow(E, S, h);
	input [7:0] E;
	output h;
	output [2:0] S;
	assign S[0]=E[7]|(E[5]&!E[6])|(E[3]&!E[4]&!E[6])|(E[1]&!E[2]&!E[4]&!E[6]);
	assign S[1]=E[7]|E[6]|(E[3]&!E[4]&!E[5])|(E[2]&!E[4]&!E[5]);
	assign S[2]=E[7]|E[6]|E[5]|E[4];
	assign h=!(|E[7:0]);
endmodule
