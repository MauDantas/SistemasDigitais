module chargin(carregamento,carga,carga0,carga1,carga2,carga3,s0,s1,s2,s3); //carga é a carga das chaves
	input [3:0] s0,s1,s2,s3,carga;
	output [3:0] carga0,carga1,carga2,carga3;
	input carregamento; 
		always @(posedge carregamento)
		begin
			if(carga==4'd0)
			begin
				if((s2==4'd9)&&(s3==4'd9)&&(s1>4'd4))
				begin
					carga0=4'd9;
					carga1=4'd9;
					carga2=4'd9;
					carga3=4'd9;
				end
				else
				begin
					if(s1>4'd4)
					begin
						carga1=s1-4'd5;
						if(s2<4'd9)
							begin
							carga0=s0;
							carga2=s2+4'd1;
							carga3=s3;
							end
						else
						begin
							carga0=s0;
							carga2=4'd0;
							carga3=s3+1;
						end 
					end
					
					else
					begin
						carga0=s0;
						carga1=s1+5;
						carga2=s2;
						carga3=s3;
					end
				end
			end
			else if(carga==4'd1)
			begin
				if((s2==4'd9)&&(s3==4'd9))
				begin
					carga0=4'd9;
					carga1=4'd9;
					carga2=4'd9;
					carga3=4'd9;
				end
				else
				begin
					if(s2==4'd9)
					begin
						carga1=s1;
						carga0=s0;
						carga2=4'd0;
						carga3=s3+4'd1;
					end
					else
					begin
						carga0=s0;
						carga1=s1;
						carga2=s2+1;
						carga3=s3;
					end 
				end
			end
			else if(carga==4'd2)
			begin
				if(((s2>4'd7)&&(s3>4'd8)&&(s1>4'd4))||(s3>8)&&(s2>8))
				begin
					carga0=4'd9;
					carga1=4'd9;
					carga2=4'd9;
					carga3=4'd9;
				end
				else
				begin
					if(s1>4'd4)
					begin
						carga1=s1-4'd5;
						if(s2<4'd8)
						begin
							carga0=s0;
							carga2=s2+4'd2;
							carga3=s3;
						end
						else
						begin
							carga0=s0;
							carga2=s2-4'd8;
							carga3=s3+1;
						end 
					end
				
					else
					begin
						if(s2>4'd8)
						begin
							carga0=s0;
							carga1=s1+5;
							carga2=4'd0;
							carga3=s3+1;
						end
						else
							begin
							carga0=s0;
							carga1=s1+5;
							carga2=s2+1;
							carga3=s3;
							end
					end
				end
			end
			else if(carga==4'd3)
			begin
				if((s2>4'd7)&&(s3>4'd8))
				begin
					carga0=4'd9;
					carga1=4'd9;
					carga2=4'd9;
					carga3=4'd9;
				end
				else
				begin
					if(s2<4'd8)
					begin
						carga0=s0;
						carga1=s1;
						carga2=s2+4'd2;
						carga3=s3;
					end
					else
					begin
						carga0=s0;
						carga1=s1;
						carga2=s2-4'd8;
						carga3=s3+1;
					end 
				end
			end
			else if(carga==4'd4)
			begin
				if((s2>4'd6)&&(s3>4'd8)&&(s1>4'd4)||(s3>4'd8)&&(s2>4'd7))
				begin
					carga0=4'd9;
					carga1=4'd9;
					carga2=4'd9;
					carga3=4'd9;
				end
				else
				begin
					if(s1>4'd4)
					begin
						carga1=s1-4'd5;
						if(s2<4'd7)
							begin
							carga0=s0;
							carga2=s2+4'd3;
							carga3=s3;
							end
						else
						begin
							carga0=s0;
							carga2=s2-4'd7;
							carga3=s3+1;
						end 
					end
				
					else
					begin
						if(s2>4'd7)
						begin
							carga0=s0;
							carga1=s1+5;
							carga2=s2-4'd8;
							carga3=s3+1;
						end
						else
							begin
							carga0=s0;
							carga1=s1+5;
							carga2=s2+1;
							carga3=s3;
							end
					end
				end
			end
			else if(carga==4'd5)
			begin
				if((s2>4'd6)&&(s3>4'd8))
				begin
					carga0=4'd9;
					carga1=4'd9;
					carga2=4'd9;
					carga3=4'd9;
				end
				else
				begin
					if(s2<4'd7)
					begin
						carga0=s0;
						carga1=s1;
						carga2=s2+4'd3;
						carga3=s3;
					end
					else
					begin
						carga0=s0;
						carga1=s1;
						carga2=s2-4'd7;
						carga3=s3+1;
					end 
				end
			end	
			else if(carga==4'd6)
			begin
				if((s2>4'd5)&&(s3>4'd8)&&(s1>4'd4)||(s3>4'd8)&&(s2>4'd6))
				begin
					carga0=4'd9;
					carga1=4'd9;
					carga2=4'd9;
					carga3=4'd9;
				end
				else
				begin
					if(s1>4'd4)
					begin
						carga1=s1-4'd5;
						if(s2<4'd6)
							begin
							carga0=s0;
							carga2=s2+4'd4;
							carga3=s3;
							end
						else
						begin
							carga0=s0;
							carga1=s1;
							carga2=s2-4'd6;
							carga3=s3+1;
						end 
					end
				
					else
					begin
						if(s2>4'd6)
						begin
							carga0=s0;
							carga1=s1+5;
							carga2=s2-4'd7;
							carga3=s3+1;
						end
						else
							begin
							carga0=s0;
							carga1=s1+5;
							carga2=s2+3;
							carga3=s3;
							end
					end
				end
			end	
			
			else if(carga==4'd7)
			begin
				if((s2>4'd5)&&(s3>4'd8))
				begin
					carga0=4'd9;
					carga1=4'd9;
					carga2=4'd9;
					carga3=4'd9;
				end
				else
				begin
					if(s2<4'd6)
					begin
						carga0=s0;
						carga1=s1;
						carga2=s2+4'd4;
						carga3=s3;
					end
					else
					begin
						carga0=s0;
						carga1=s1;
						carga2=s2-4'd6;
						carga3=s3+1;
					end 
				end
			end		
			else if(carga==4'd8)
			begin
				if((s2>4'd4)&&(s3>4'd8)&&(s1>4'd4)||(s3>4'd8)&&(s2>4'd5))
				begin
					carga0=4'd9;
					carga1=4'd9;
					carga2=4'd9;
					carga3=4'd9;
				end
				else
				begin
					if(s1>4'd4)
					begin
						carga1=s1-4'd5;
						if(s2<4'd5)
						begin
							carga0=s0;
							carga2=s2+4'd5;
							carga3=s3;
						end
						else
						begin
							carga0=s0;
							carga2=s2-4'd5;
							carga3=s3+1;
						end 
					end
				
					else
					begin
						if(s2>4'd5)
						begin
							carga0=s0;
							carga1=s1+5;
							carga2=s2-4'd6;
							carga3=s3+1;
						end
						else
							begin
							carga0=s0;
							carga1=s1+5;
							carga2=s2+4;
							carga3=s3;
							end
					end
				end
			end
			else if(carga==4'd9)
			begin
				if((s2>4'd4)&&(s3>4'd8))
				begin
					carga0=4'd9;
					carga1=4'd9;
					carga2=4'd9;
					carga3=4'd9;
				end
				else
				begin
					if(s2<4'd5)
					begin
						carga0=s0;
						carga1=s1;
						carga2=s2+4'd5;
						carga3=s3;
					end
					else
					begin
						carga0=s0;
						carga1=s1;
						carga2=s2-4'd5;
						carga3=s3+1;
					end 
				end
			end	
			else if(carga==4'd10)
			begin
				if((s2>4'd3)&&(s3>4'd8)&&(s1>4'd4)||(s3>4'd8)&&(s2>4'd4))
				begin
					carga0=4'd9;
					carga1=4'd9;
					carga2=4'd9;
					carga3=4'd9;
				end
				else
				begin
					if(s1>4'd4)
					begin
						carga1=s1-4'd5;
						if(s2<4'd4)
							begin
							carga0=s0;
							carga2=s2+4'd6;
							carga3=s3;
							end
						else
						begin
							carga0=s0;
							carga2=s2-4'd4;
							carga3=s3+1;
						end 
					end
				
					else
					begin
						if(s2>4'd4)
						begin
							carga0=s0;
							carga1=s1+5;
							carga2=s2-4'd5;
							carga3=s3+1;
						end
						else
							begin
							carga0=s0;
							carga1=s1+5;
							carga2=s2+5;
							carga3=s3;
							end
					end
				end
			end
			else if(carga==4'd11)
			begin
				if((s2>4'd3)&&(s3>4'd8))
				begin
					carga0=4'd9;
					carga1=4'd9;
					carga2=4'd9;
					carga3=4'd9;
				end
				else
				begin
					if(s2<4'd4)
					begin
						carga0=s0;
						carga1=s1;
						carga2=s2+4'd6;
						carga3=s3;
					end
					else
					begin
						carga0=s0;
						carga1=s1;
						carga2=s2-4'd4;
						carga3=s3+1;
					end 
				end
			end
			else if(carga==4'd12)
			begin
				if((s2>4'd2)&&(s3>4'd8)&&(s1>4'd4)||(s3>4'd8)&&(s2>4'd3))
				begin
					carga0=4'd9;
					carga1=4'd9;
					carga2=4'd9;
					carga3=4'd9;
				end
				else
				begin
					if(s1>4'd4)
					begin
						carga1=s1-4'd5;
						if(s2<4'd3)
						begin
							carga0=s0;
							carga2=s2+4'd7;
							carga3=s3;
						end
						else
						begin
							carga0=s0;
							carga2=s2-4'd3;
							carga3=s3+1;
						end 
					end
				
					else
					begin
						if(s2>4'd3)
						begin
							carga0=s0;
							carga1=s1+5;
							carga2=s2-4'd4;
							carga3=s3+1;
						end
						else
							begin
							carga0=s0;
							carga1=s1+5;
							carga2=s2+6;
							carga3=s3;
							end
					end
				end
			end
			else if(carga==4'd13)
			begin
				if((s2>4'd2)&&(s3>4'd8))
				begin
					carga0=4'd9;
					carga1=4'd9;
					carga2=4'd9;
					carga3=4'd9;
				end
				else
				begin
					if(s2<4'd3)
					begin
						carga0=s0;
						carga1=s1;
						carga2=s2+4'd7;
						carga3=s3;
					end
					else
					begin
						carga0=s0;
						carga1=s1;
						carga2=s2-4'd3;
						carga3=s3+1;
					end 
				end
			end
			else if(carga==4'd14)
			begin
				if((s2>4'd1)&&(s3>4'd8)&&(s1>4'd4)||(s3>4'd8)&&(s2>4'd2))
				begin
					carga0=4'd9;
					carga1=4'd9;
					carga2=4'd9;
					carga3=4'd9;
				end
				else
				begin
					if(s1>4'd4)
					begin
						carga1=s1-4'd5;
						if(s2<4'd2)
						begin
							carga0=s0;
							carga2=s2+4'd8;
							carga3=s3;
						end
						else
						begin
							carga0=s0;
							carga2=s2-4'd2;
							carga3=s3+1;
						end 
					end
				
					else
					begin
						if(s2>4'd2)
						begin
							carga0=s0;
							carga1=s1+5;
							carga2=s2-4'd3;
							carga3=s3+1;
						end
						else
							begin
							carga0=s0;
							carga1=s1+5;
							carga2=s2+7;
							carga3=s3;
							end
					end
				end
			end
			else if(carga==4'd15)
			begin
				if((s2>4'd1)&&(s3>4'd8))
				begin
					carga0=4'd9;
					carga1=4'd9;
					carga2=4'd9;
					carga3=4'd9;
				end
				else
				begin
					if(s2<4'd2)
					begin
						carga0=s0;
						carga1=s1;
						carga2=s2+4'd8;
						carga3=s3;
					end
					else
					begin
						carga0=s0;
						carga1=s1;
						carga2=s2-4'd2;
						carga3=s3+1;
					end 
				end
			end
	end
endmodule
