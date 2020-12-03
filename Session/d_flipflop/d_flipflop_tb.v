`timescale 1ns / 1ps

module d_flipflop_tb;

	// Inputs
	reg D;
	reg clk;

	// Outputs
	wire Q;

	parameter stop_time=2000;

	initial	begin
		$dumpfile("dump.vcd");
		$dumpvars(0,d_flipflop_tb);
	end
	
	// Instantiate the Unit Under Test (UUT)
	d_flipflop uut (
		.D(D), 
		.clk(clk), 
		.Q(Q)
	);

	initial #stop_time $finish;

	initial begin
		// Initialize Inputs
		D = 0;
		clk = 0;

	end
	
	always begin
		#3 D=~D;
	end
	
	always begin
		#5 clk=~clk;
	end 

endmodule