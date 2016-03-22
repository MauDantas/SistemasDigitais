//0 a 5 em binarios mostra as letras de 'A' a 'E'
module letras_BCD(a,b,c,d,e,f,g,a0,a1,a2);
input a0,a1,a2;
output a,b,c,d,e,f,g;

assign{a,b,c,d,e,f,g}=({a2,a1,a0}==0)?(7'b0001000):({a2,a1,a0}==1)?(7'b1100000):({a2,a1,a0}==2)?(7'b0110001):({a2,a1,a0}==3)?(7'b1000010):({a2,a1,a0}==4)?(7'b0110000):({a2,a1,a0}==5)?(7'b0111000):(7'b1111111);
endmodule 