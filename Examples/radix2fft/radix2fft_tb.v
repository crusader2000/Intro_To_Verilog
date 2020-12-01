`timescale 1ns / 1ps

module radix2ftt_tb;

	// Inputs
	reg [3:0] x_0;

	reg [3:0] x_1;

	reg [3:0] x_2;

	reg [3:0] x_3;

	// Outputs
	wire [3:0] X_real_0;
	wire [3:0] X_real_1;
	wire [3:0] X_real_2;
	wire [3:0] X_real_3;
	wire [3:0] X_imag_0;
	wire [3:0] X_imag_1;
	wire [3:0] X_imag_2;
	wire [3:0] X_imag_3;

	// Instantiate the Unit Under Test (UUT)
	radix2fft uut (
		.x(x), 
		.X_real_0(X_real_0), 
		.X_real_1(X_real_1), 
		.X_real_2(X_real_2), 
		.X_real_3(X_real_3), 
		.X_imag_0(X_imag_0), 
		.X_imag_1(X_imag_1), 
		.X_imag_2(X_imag_2), 
		.X_imag_3(X_imag_3)
	);
integer j,k,l,m;
	initial begin
		// Initialize Inputs
		x_0 = 0;
x_1 = 0;
		x_2 = 0;
		x_3 = 0;
				
		for(j=1;j <=15;j = j+1) 
		for(k=1;k <=15;k = k+1) 
		for(l=1;l <=15;l = l+1)
		for(m=1;m <=15;m = m+1) 
      
            begin
                x_0 <= j;
                x_1 <= k;
                x_2 <= l;
                x_3 <= m;
					 #10;
            end     
			end
      
endmodule

