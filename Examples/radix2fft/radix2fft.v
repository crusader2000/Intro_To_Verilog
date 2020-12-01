`timescale 1ns / 1ps
module radix2fft(
	input [3:0] x_0,x_1,x_2,x_3,
	output [3:0] X_real_0,X_real_1,X_real_2,X_real_3,
	output [3:0] X_imag_0,X_imag_1,X_imag_2,X_imag_3
	);

wire [3:0] P1_real [3:0];
assign P1_real[0] = x_0+x_1;
assign P1_real[1] = x_0-x_1;
assign P1_real[2] = x_2+x_3;
assign P1_real[3] = x_2-x_3;

assign X_real_0 = P1_real[0]+P1_real[2];
assign X_imag_0 = 0;

assign X_real_2 = P1_real[1];
assign X_imag_2 = P1_real[3];

assign X_real_1 = P1_real[0]-P1_real[2];
assign X_imag_1 = 0;

assign X_real_3 = P1_real[1];
assign X_imag_3 = -P1_real[3];

endmodule