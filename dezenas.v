//Modulo que 8 Bits => BCD, parte das dezenas

module dezenas(e7,e6,e5, e4, e3, e2, e1, e0, a1, b1, c1, d1); //entradas da mais significativa para a menos significativa
//a1, MSB 
//BCD no formato "ABCD" de um numero binario
	input e7,e6,e5, e4, e3, e2, e1, e0;
	output a1, b1, c1, d1;
	wire n [6:0] //wires for nots
	wire a [71:0] // wires for ands
	wire o [19:0]//wires for ors
	
	not nn1(n[0], e7);//~A 
	and aa1(a[0], e6, n[0]);//A'B
	
	not nn2(n[1], e6);//~B
	not nnn1(n[2], e5);//~C
	not nn3(n[3], e4);//~D 
	not nn8(n[4], e3);//~E 
	not nn99(n[5], e2);////~F
	not nn99(n[6], e1);//~G
	
	and aa2(a[1], n[2], e4);//C'D 
	and aa3(a[2], e5,n[3], n[4], n[5]);//CD'E'F'
	or oo1(o[0], a[1], a[2]);//C'D+CD'E'F'
	and aa4(a[3], o[0],a[0]);//A'B(C'D+CD'E'F')
	
	and aa5(a[4], e7, a[1], e5, e4);//AB'CD
	or oo2(o[1],e2, e3 );//F+E
	and aa0(a[5], a[4], o[1]);//AB'CD(E+F)
	
	and aa6(a[6], e7,e6,n[2], n[3], n[4]);// ABC'D'E'
	
	or oo3(a1, a[6], a[3], a[5]); // Primeiro dígito concluido, a1
	//A'B(C'D+CD'E'F')+AB'CD(E+F)+ABC'D'E'
	
	and aa7(a[7], e5,e4);
	and aa8(a[8], e6,e7);//AB 
	and aa9(a[9], n[1], n[4], n[5])
	or oo4(o[2], a[8], a[9]);
	and aa10(a[10], o[2], a[7]);//CD(B'E'F'+AB)
	
	and aa11(a[11], n[1], e7);
	and aa12(a[12], e2,e3,n[2]);
	and aa13(a[13], e5, n[3], n[4]);
	and aa14(a[14], e4, n[2]);
	or oo5(o[3], a[12], a[13], a[14]);
	and aa15(a[15], o[3], a[11]);//AB'(C'EF+CD'E'+C'D)
	
	and aa16(a[16], n[1],e5,e3);
	and aa17(a[17], n[6], n[5], n[3]);
	or oo6(o[4], n[0], a[17]);
	and aa18(a[18], o[4], a[16]);//B'CE(D'F'G'+A')
	
	and aa19(a[19], n[1],n[2], e5, n[4]);//B'C'DE'F
	
	and aa20(a[20], n[0], e6, n[2], n[3], e2);//A'BC'D'F
	
	or oo7(b1,a[20], a[19], a[18], a[15],a[11], a[7]);// Segundo digito concluido, b1
	//CD(B'E'F'+AB)+AB'(C'EF+CD'E'+C'D)+B'CE(D'F'G'+A')+B'C'DE'F+A'BC'D'F
	
	and aa21(a[21], n[0], n[1]);
	and aa22(a[22], n[2], e4,e3);
	and aa23(a[23], n[2], e4, e2);
	and aa24(a[24], e3, e4, e2);
	or oo8(o[5],a[22], a[23], a[24]);
	and aa25(a[25], o[5], a[21]);//A'B'(C'DE+C'DF+DEF)
	
	and aa26(a[26], n[0], e6);
	and aa27(a[27],n[2],n[3]);
	and aa28(a[28], e5, e4,e3);
	or oo9(o[6], a[27], a[28]);
	and aa29(a[29], o[6], a[26]);//A'B(C'D'+CDE)
	
	and aa30(a[30],e5, n[3]);
	and aa31(a[31], n[1], e3);
	or oo10(o[7], e7, a[31]);
	and aa32(a[32],o[7], a[30] );//CD'(B'E+A)
	
	and aa33(a[33], e7,e6,n[2],e4, e3, e2);//ABC'DEF
	
	and aa34(a[34], n[3],n[4]);
	and aa35(a[35], n[3], n[5]);
	and aa36(a[36], n[4],n[5], e5);
	or oo11(o[8], a[34],a[35], a[36] );
	and aa37(a[37], a[11], o[8]);//AB'(D'E'+D'F'+CE'F')
	
	or oo12(c1, a[37],a[33], a[32], a[29],a[25]);//Terceiro dígito concluido, c1
	//A'B'(C'DE+C'DF+DEF)+A'B(C'D'+CDE)+CD'(B'E+A)+ABC'DEF+AB'(D'E'+D'F'+CE'F')
	
	and aa38(a[38], n[0],n[1],e5,n[4]);//A'B'CE'
	or oo12(o[9], n[3],e1);//D'+G
	and aa39(a[39], o[9], e5, a[38]);//A'B'CE'(D'+G)
	
	and aa40(a[40],n[0],e3,e2,e1);//A'EFG
	and aa41(a[41],e6, n[3]);//BD'
	or oo13(o[10],n[2], a[41]);//C'+BD'
	and aa42(a[42], a[40], o[10]);//A'EFG(C'+BD')
	
	and aa43(a[43], n[0], n[2], n[3]);//A'C'D'
	and aa44(a[44], e6, e2,e1);//BFG
	or oo14(o[11], a[44], e3);//BFG+E
	and aa45(a[45], a[42], o[11]);//A'C'D'(BFG+E)
	
	and aa46(a[46], n[0], e5, e4);//A'CD
	and aa47(a[47], n[1],e4,n[5]);//B'EF'
	and aa48(a[48], n[4], e2);//E'F
	or oo15(o[12], a[47],a[48]);//E'F+B'EF'
	and aa49(a[49],a[46], o[12] );//A'CD(B'EF'+E'F)
	
	and aa50(a[50],n[2], e3,e2 );//C'EF
	and aa51(a[51],n[2], e3,e1 )//C'EG
	and aa52(a[52], e5, n[4],n[5]);//CE'F'
	or oo16(o[13], a[50],a[51],a[52]);//C'EF+C'EG+CE'F'
	and aa54(a[54], a[0],o[13]);//A'B(C'EF+C'EG+CE'F')
	
	and aa55(a[55], e7,n[2], n[4],e1);//AC'E'G
	or oo17(o[14], n[3],e2,e6);//(D'+F+B)
	and aa56(a[56], o[14],a[55]);//AC'E'G(D'+F+B)
	
	and aa57(a[57],e7, e5, n[3], e3 );//ACD'E
	or oo18(o[15], e1,e2);//F+G
	and aa58(a[58], o[15], a[57]);//ACD'E(F+G)
	
	and aa59(a[59],e7,n[1], n[5]);//AB'F'
	and aa60(a[60], n[2],e3);//C'E
	and aa61(a[61], e4,e5);//CDE'
	or oo19(o[16], a[60],a[61]);//C'E+CDE'
	and aa62(a[62], o[16],a[59]);//AB'F'(C'E+CDE')
	
	and aa63(a[63], e7, e2,e3);//AEF
	and aa64(a[64], e4,e1);//DG 
	or oo20(o[17], a[1],a[64]);//(DG+C'D)
	and aa65(a[65],o[17],a[63]);//AEF(DG+C'D)

	and aa66(a[66], a7,n[2],n[3],n[4]);//AC'D'E'
	or oo21(o[18], e6,e2);//B+F
	and aa67(a[67],a[66],o[18]);//AC'D'E'(B+F)
	
	and aa68(a[68],n[2],n[4],e2);//C'E'F
	and aa69(a[69], n[3], n[4], e1,e2);//D'E'FG
	and aa70(a[70], e5,e3);//CE
	or oo22(o[19], a[68],a[69],a[70]);//C'E'F+D'E'FG+CE
	and aa71(a[71],a[8],o[19]);	//AB(C'E'F+D'E'FG+CE)
	
	or oo23(d1, a[71],a[67],a[65],a[62],a[58],a[56],a[54],a[49],a[45],a[42],a[39]);
	//Fim da simplificacao do bit de menor significancia
	//D1=A'B'CE'(D'+G)+A'EFG(C'+BD')+A'C'D'(BFG+E)+A'CD(B'EF'+E'F)+A'B(C'EF+C'EG+CE'F')+AC'E'G(D'+F+B)+ACD'E(F+G)
	//+AB'F'(C'E+CDE')+AEF(DG+C'D)+AC'D'E'(B+F)+AB(C'E'F+D'E'FG+CE)

endmodule
