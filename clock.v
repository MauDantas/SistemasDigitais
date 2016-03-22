module clock(CCLK, clkscale, clk);//CCLK crystal clock oscillator 50 MHz
	input CCLK
	output reg clk;
	input [31:0] clkscale;
	reg [31:0] clkq; // registrador do clock, valor inicial de 0
	always@(posedge CCLK)
	begin
		clkq<=clkq+1; // incrementa registrador do clock
		if (clkq>=clkscale) // escalamento de clock
		begin
			clk<=~clk; // saída de clock
			clkq<=0; // reset do registrador do clock
		end
	end
endmodule