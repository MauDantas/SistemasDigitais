module contador2bits(CLK,s);
input CLK;
output reg [1:0]s;

always@(posedge CLK)
	s<= s+1;
endmodule
