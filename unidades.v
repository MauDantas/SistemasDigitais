//Modulo que 8 Bits => BCD, parte das unidades

module unidades(e7,e6,e5, e4, e3, e2, e1, e0, c2, d2); //entradas da mais significativa para a menos significativa
//a0, b0, c0 e d0 relativo a posição do digito BCD no formato "ABCD" de um numero binario

	input e7,e6,e5, e4, e3, e2, e1, e0;
	output c2, d2;
	wire n [6:0] //wires for nots
	wire a [50:0] // wires for ands
	wire o [12:0]//wires for ors
	wire caso[4:0];//wires for casos
	not nn1(n[0], e7);//~A 
	not nn2(n[1], e6);//~B
	not nnn1(n[2], e5);//~C
	not nn3(n[3], e4);//~D 
	not nn8(n[4], e3);//~E 
	not nn99(n[5], e2);////~F
	not nn99(n[6], e1);//~G
	
	and aa1(a[0], e7,e6,e5,e4);
	and aa12(a[1], e7,e6,e5,n[3]);
	and aa3(a[2], e7,e6,n[2],e4);
	and aa14(a[3], e7,e6,n[2],n[3]);
	and aa15(a[5], e7,n[1],e5,e4);
	and aa16(a[6], e7,n[1],e5,n[3]);
	and aa17(a[7], e7,n[1],n[2],e4);
	and aa18(a[8], e7,n[1],n[2],n[3]);
	and aa19(a[9], n[0],e6,e5,e4);
	and aa1111(a[10], n[0],e6,e5,n[3]);
	and aa1122(a[11], n[0],e6,n[2],e4);
	and aa1998(a[12], n[0],e6,n[2],n[3]);
	and aa811(a[13], n[0],n[1],e5,e4);
	and aa1998(a[14], n[0],n[1],e5,n[3]);
	and aa12008(a[15], n[0],n[1],n[2],n[3]);
	and aa1234566(a[16], n[0],n[1],n[2],e4);
	//Mintermos ABCD
	or oo1(caso[0], a[0], a[6], a[15],a[11]);
	or oo11(caso[1], a[2], a[8], a[13]);
	or oo12(caso[2], a[1], a[7], a[12]);
	or oo123(caso[3], a[5],a[10], a[16]);
	or oo4(caso [4], a[3], a[9], a[14]);
	
	and ei(a[17], e3,n[5],n[6]);//EF'G'
	and casos0(a[18], caso[0], a[17]);
	
	and ei2(a[19], n[4],n[5],n[6]);//E'F'G'
	and ei3(a[20],e3,n[5],e1);//EF'G
	or ou1(o[0], a[19],a[20]);//EF'G+E'F'G'
	and casos1(a[21],caso[1], o[0]);
	
	and ei4(a[22], e3,e2,n[6]);//EFG'
	and ei5(a[23], e3,e2,e1);//EFG
	or ou2(o[1], a[22],a[23]);//EFG+EFG'
	and casos2(a[30], caso[2], o[1]);
	
	and ei6(a[24], n[4],n[5],e1);//E'F'G
	and ei7(a[25], e3, e2, n[6]);//EFG'
	or ou3(o[2], a[24],a[25]);//EFG'+E'F'G
	and casos3(a[26], o[2], caso[3]);
	
	and ei8(a[27], n[4], e2,e1);//E'FG
	and casos4(a[29], a[27],caso[4]);
	
	or ou4(a0, a[18],a[21],a[26],a[30],a[29]);
	
	and ei8(a[31], n[4], e2);//E'F 
	and ei9(a[32], n[6],e2);//FG'
	or ou5(o[3], a[31],a[32]);//FG'+E'F
	and casos02(a[33], caso[0],o[3]);
	
	and ei10(a[34],e3, n[5], n[6]);//EF'G'
	or ou6(o[4], a[34], a[27]);//EF'G'+E'FG
	or casos12(a[35], casos[1], o[4]);
	
	and ou7(o[5],a[24], a[25], a[19] );//E'F'G+E'F'G'+EFG'
	and casos22(a[36], caso[2], o[5]);
	
	and ei11(a[37], n[5],n[6]);//F'G'
	and ei12(a[38], e3,n[5]);//EF'
	or ou8(o[6], a[38],a[37]);//EF'+F'G'
	and casos32(a[39], o[6], caso[3]);
	
	and ei13(a[40], e3,e2);//EF
	or ou9(o[7],a[24],a[40], a[32]);//EF+FG'+E'F'G
	and casos42(a[40], caso[4], o[7]);
	
	or ou10(b0, a[40], a[39], a[36],a[35],a[33]);
	
	and ei14(a[41], n[4], e1);//E'G
	and ei15(a[42],n[5], e1);//F'G
	or oou11(o[8], a[22], a[41], a[42]);//E'G+F'G+EFG'
	and casos03(a[43], o[8], caso[0]);
	
	and ei16(a[44], n[4],e2,n[6]);//E'FG'
	or ou12(o[9],a[17],a[23],a[44]);//E'FG'+EF'G'+EFG
	and casos13(a[45], caso[1], o[9]);
	
	and ei17(a[45], e3, n[6]);//EG'
	or ou13(o[10],a[46], a[20]);//EG'+EF'G
	and casos23(a[46], o[10],caso[2]);
	
	or ou14(o[11], a[19], a[27], a[20]);//E'F'G'+E'FG+EF'G
	and casos33(a[47], caso[3], o[11]);
	
	and ei18(a[48],e3, e1);//EG
	and ei19(a[49],n[4], n[6]);//E'G'
	or ou15(o[12], a[48],a[49]);//EG+E'G'
	and casos43(a[50], o[12], caso[4]);
	
	or ou16(c0, a[50], a[47], a[46],a[45],a[43]);
	
	buf bp(d0, e0);
endmodule;
	