`timescale 1ns / 1ps

module counter_tb;

	// Inputs
	reg clk;

	// Outputs
	wire [3:0] counter;

	parameter stop_time=2000;

	initial	begin
		$dumpfile("dump.vcd");
		$dumpvars(0,counter_tb);
	end

    initial  $monitor("At time %t decimal, counter = %d", $time, counter);
	
	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.counter(counter)
	);

	initial #stop_time $finish;

	initial begin
		// Initialize Inputs
		clk = 0;
	end
	
	always begin
		#5 clk=~clk;
	end 

endmodule