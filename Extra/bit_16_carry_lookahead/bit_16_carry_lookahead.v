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

module bit_16_carry_lookahead(
input [15:0] a,
input [15:0] b,
input c_0,
output [15:0] s,
output c_16
    );

	 wire [15:0] g;
	 wire [15:0] p;
	 wire c_4;
	 wire c_8;
	 wire c_12;
	 
	 bit_4_carry_lookahead ux1(a[3:0],b[3:0],c_0,s[3:0],c_4);
	 bit_4_carry_lookahead ux1(a[7:4],b[7:4],c_4,s[7:4],c_8);
	 bit_4_carry_lookahead ux1(a[11:8],b[11:8],c_8,s[11:8],c_12);
	 bit_4_carry_lookahead ux1(a[15:12],b[15:12],c_12,s[15:12],c_16);

endmodule
