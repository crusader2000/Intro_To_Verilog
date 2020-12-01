`timescale 1ns / 1ps

module bit_1_full_adder(
    input a_i,
    input b_i,
    input c_i_1,
    output s_i,
    output c_i
    );
wire mid=a_i^b_i;
assign s_i=mid^c_i_1;
assign c_i=( mid & c_i_1 )|(a_i & b_i);

endmodule

module bit_4_ripple_carry(
 input [3:0] a,
 input [3:0] b,
 input c_0,
 output [3:0] s,
 output c_4
    );
wire c_1,c_2,c_3;
bit_1_full_adder ux1(a[0],b[0],c_0,s[0],c_1);
bit_1_full_adder ux2(a[1],b[1],c_1,s[1],c_2);
bit_1_full_adder ux3(a[2],b[2],c_2,s[2],c_3);
bit_1_full_adder ux4(a[3],b[3],c_3,s[3],c_4);
endmodule
