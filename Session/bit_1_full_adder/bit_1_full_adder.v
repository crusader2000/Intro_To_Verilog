`timescale 1ns / 1ps
module bit_1_full_adder(
    
    // 1 bit inputs
    input a_i,
    input b_i,
    input c_i_1,
    // 1 bit outputs
    output s_i,
    output c_i
    );

    wire mid = a_i^b_i;

    // The Sum Output
    assign s_i = mid^c_i_1;

    // The Carry Output
    assign c_i = ( mid & c_i_1 )|(a_i & b_i);

endmodule