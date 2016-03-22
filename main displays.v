module main(CCLK,AN0,AN1,AN2,AN3,inputDisplay);
	output AN0,AN1,AN2,AN3;
	input CCLK;
	output [7:0] inputDisplay;
	wire ggclock;
	wire [1:0]scount;
	wire [7:0]d0, d1, d2, d3; 
	
	clock cl(.CCLK(CCLK), .clkscale(31'd250000), .clk(ggclock));
	
	contador2bits c2(.CLK(ggclock),.s(scount));
	
	deccod2x4 DEC(.e(inpu),.s({AN3, AN2,AN1,AN0}));
	
	decod7seg PO(.a1(d0[0]),.b1(d0[1]),.c1(d0[2]),.d1(d0[3]),.e(d0[4]),.f(d0[5]),.g(d0[6]),.dp(d0[7]), .Sign(1'b0), .A(1'b0),.B(1'b0),.C(1'b1),.D(1'b0));
	decod7seg PL(.a1(d1[0]),.b1(d1[1]),.c1(d1[2]),.d1(d1[3]),.e(d1[4]),.f(d1[5]),.g(d1[6]),.dp(d1[7]), .Sign(1'b0), .A(1'b1),.B(1'b0),.C(1'b0),.D(1'b0));
	decod7seg PM(.a1(d2[0]),.b1(d2[1]),.c1(d2[2]),.d1(d2[3]),.e(d2[4]),.f(d2[5]),.g(d2[6]),.dp(d2[7]), .Sign(1'b0), .A(1'b0),.B(1'b1),.C(1'b1),.D(1'b1));
	decod7seg PN(.a1(d3[0]),.b1(d3[1]),.c1(d3[2]),.d1(d3[3]),.e(d3[4]),.f(d3[5]),.g(d3[6]),.dp(d3[7]), .Sign(1'b0),.A(1'b0),.B(1'b0),.C(1'b1),.D(1'b1));
	
	muxDisplay m(d0,d1,d2,d3,inputDisplay,scount);
endmodule
