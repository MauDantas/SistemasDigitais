module Main(output [7:0]diplay,input [3:0]sw,input CCLK, carregamento,output AN0, AN1, AN2, AN3);
	wire [3:0] carga1,carga2,carga3,carga4,s1,s2,s3,s4;
	wire clk;
	clock CCC(CCLK, 25000, clk);
	chargin(carregamento,carga1,carga2,carga3,carga4,s1,s2,s3,s4)
	crtl_displays(clk, carga1, carga2, carga3, carga4, AN0, AN1, AN2, AN3, display);
endmodule 
