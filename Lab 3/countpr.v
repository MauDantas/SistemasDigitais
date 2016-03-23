//Modulo contador decrescente/crescente 0 a 9
//Com cin e cout
module countpr(up,carregamento, carga, clk, s, cin, cout, init, reset);
	input up, clk,carregamento,cin;
	reg en;
	input [3:0] carga;
	output reg cout;
	output reg [3:0] s;
	always@(posedge init)
		en<=~en;
	always @(posedge carregamento)
		s<=carga;
	always @(reset)
		if(en==0)
			s=4'd0;
	always@(posedge clk)
		if(en)
			if (cin)
			begin
				if(up)
					begin
					if(s<4'd9)
						s<=s+1;
						else
						begin
						s<=4'd0;
						cout<=1;
						end
					end
				else 
					begin
					if(s=4'd0)
						begin
						s<=4'd9;
						cout<=1;
						end
					else
						s<=s-1;
			end
endmodule			
			