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

module bit_4_ripple_carry(
    // 4 bit inputs to be added
    // [3:0] implies the MSB is on left hand side
    // [0:3] implies the MSB is on the right hand side
    input [3:0] a,
    input [3:0] b,
    // 1 bit input carry
    input c_0,
    // 4 bit output (result of addition)
    output [3:0] s,
    // 1 bit output carry
    output c_4
    );

    // Intermediary Outputs
    wire c_1,c_2,c_3;

    // 1 bit Full adder for the value at index 0
    bit_1_full_adder ux1(a[0],b[0],c_0,s[0],c_1);
    
    // 1 bit Full adder for the value at index 1
    bit_1_full_adder ux2(a[1],b[1],c_1,s[1],c_2);
    
    // 1 bit Full adder for the value at index 2
    bit_1_full_adder ux3(a[2],b[2],c_2,s[2],c_3);
    
    // 1 bit Full adder for the value at index 3
    bit_1_full_adder ux4(a[3],b[3],c_3,s[3],c_4);

endmodule
