//Conversor BCD para sete segmentos na modulagem comportamental
module conversorBCD7seg (A,S);
	input [3:0]A;
	output [7:0]S;
	always@(A)
		begin
		case (A)
		4'd0: S=00000011;
		4'd1: S=10011111;
		4'd2: S=00100101;
		4'd3: S=00001101;
		4'd4: S=10011001;
		4'd5: S=01001001;
		4'd6: S=01000001;
		4'd7: S=00011111;
		4'd8: S=00000001;
		4'd9: S=00011001;
		4'b101x: S=11111111;
		4'b11xx: S=11111111;
		endcase
		end 
endmodule
				