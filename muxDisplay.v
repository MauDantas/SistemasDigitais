module muxDisplay(AN0,AN1,AN2,AN3,s,k);
	input [1:0]k;
	input [7:0]AN0,AN1,AN2,AN3;
	output [7:0] s;
	
	always@(.)
		
		begin
		if(k==2'd0)
			s=AN0;
		else if(k==2'd1)
			s=AN1;
		else if(k==2'd2)
			s=AN2;
		else
			s=AN3;
		end	
endmodule
