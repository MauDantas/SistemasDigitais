module Maincount(CCLK, S);
	input CCLK;
	output [3:0] S;
	reg clk;
	clock ALO(CCLK, 25000000, clk);
	contador4bits count(S,clk);
endmodule
	
	