`timescale 1ns / 1ps
module bit_4_carry_lookahead(
    input [3:0] a,
	 input [3:0] b,
	 input c_0,
	 output [3:0] s,
	 output c_4
	 );
	 
	 wire [3:0] g;
	 wire [3:0] p;
	 wire c_1;
	 wire c_2;
	 wire c_3;
	 
	 assign g[0]= a[0] & b[0];
	 assign g[1]= a[1] & b[1];
	 assign g[2]= a[2] & b[2];
	 assign g[3]= a[3] & b[3];
	 
	 assign p[0]= a[0] ^ b[0];
	 assign p[1]= a[1] ^ b[1];
	 assign p[2]= a[2] ^ b[2];
	 assign p[3]= a[3] ^ b[3];
	 
	 
	 assign s[0]= p[0] ^ c_0;
	 assign c_1= (c_0 & p[0]) | g[0];
	 
	 assign s[1]= p[1] ^ c_1;
	 assign c_2= (c_1 & p[1]) | g[1];
	 
	 assign s[2]= p[2] ^ c_2;
	 assign c_3= (c_2 & p[2]) | g[2];
	 
	 assign s[3]= p[3] ^ c_3;
	 assign c_4= (c_3 & p[3]) | g[3];
	 
	
endmodule
