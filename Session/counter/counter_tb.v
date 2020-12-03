`timescale 1ns / 1ps

module counter_tb;

	// Inputs
	reg clk;

	// Outputs
	wire [3:0] counter;

	parameter stop_time=2000;

	// We initialize a VCD (Value Change Dump file) which will store all the 
	// value changes and variables. It can be viewed using the following command
	// Bash: ``` gtkwave dump.vcd``` 
	initial	begin
		$dumpfile("dump.vcd");
		$dumpvars(0,counter_tb);
	end

	// Uncomment one of the following $monitor statements to monitor the inputs and outputs 
    
	// Monitor Output in Hexadecimal
    // initial  $monitor("At time %t hexadecimal, counter = %h", $time, counter);
    // Monitor Output in Binary
    // initial  $monitor("At time %t binary, counter = %b", $time, counter);
    // Monitor Output in Decimal
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