module clocktest(CCLK, LD0, LD1, LD2);
	input CCLK;
	output reg LD0, LD1, LD2;
	clock M0 (CCLK, 25000000, LD0); //1 Hz de clock
	clock M1 (CCLK, 12500000, LD1); //2 Hz de clock
	clock M2 (CCLK, 6250000, LD2); //4 Hz de clock	
endmodule
	