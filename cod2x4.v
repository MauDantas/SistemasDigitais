module deccod2x4(e,s);
	input [1:0]e;
	output [3:0]s;
	always @(posedge e);
		begin
		if(e=2'd0)
			s=4'd1;
		else if(e=2'd1)
			s=4'd2;
		else if(e=2'd2)
			s=4'd4;
		else
			s=4'd8;
		end
endmodule
