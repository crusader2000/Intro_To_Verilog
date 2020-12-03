`timescale 1ns / 1ps
module bit_1_full_adder_tb;
	// RULE:
	// The inputs in testbench have to be declared as registers
	reg a_i;
	reg b_i;
	reg c_i_1;
	// RULE:
	// The outputs in testbench have to be declared as wires
	wire s_i;
	wire c_i;

	// An extra parameter for manipulating the simulation
	parameter stop_time = 2000;

	// We initialize a VCD (Value Change Dump file) which will store all the 
	// value changes and variables. It can be viewed using the following command
	// Bash: ``` gtkwave dump.vcd``` 
	initial	begin
		$dumpfile("dump.vcd");
		$dumpvars(0,bit_1_full_adder_tb);
	end

	// Creation an instance named 'uut' of original module 'bit_1_full_addder' 
	bit_1_full_adder uut (
		.a_i(a_i), 
		.b_i(b_i), 
		.c_i_1(c_i_1), 
		.s_i(s_i), 
		.c_i(c_i)
	);

	// Uncomment one of the following to monitor the inputs and outputs 
    
	// Monitor Output in Hexadecimal
	// initial  $monitor("At time %t hex, a_i = %h, b_i = %h, c_i = %h ", $time, a_i,b_i,c_i);
    // Monitor Output in Binary
    // initial  $monitor("At time %t binary, a_i = %b, b_i = %b, c_i = %b ", $time, a_i,b_i,c_i);
    // Monitor Output in Decimal
    initial  $monitor("At time %t decimal, a_i = %d, b_i = %d, c_i = %d ", $time, a_i,b_i,c_i);

	initial #stop_time $finish;
	
	initial begin
	// Initialize your input. 
	// Always a good practice to initialize to prevent your 
	// model from getting stuck in 'z' or 'x' state 
		a_i = 0;
		b_i = 0;
		c_i_1 = 0;
	end
	
	always begin
	// Change/Flip the value of a_i every 5 secs on the simulator
	#5 a_i=~a_i;
	end
	
	always begin
	// Change/Flip the value of b_i every 10 secs on the simulator
	#10 b_i=~b_i;
	end
	
	always begin
	// Change/Flip the value of c_i every 20 secs on the simulator
	#20 c_i_1=~c_i_1;
	end
	
endmodule