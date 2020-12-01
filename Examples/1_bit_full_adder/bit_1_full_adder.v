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
