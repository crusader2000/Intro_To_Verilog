`timescale 1ns / 1ps

module bit_4_ripple_carry_tb;
	// RULE:
	// The inputs in testbench have to be declared as registers
	reg [3:0] a;
	reg [3:0] b;
	reg c_0;
	// RULE:
	// The outputs in testbench have to be declared as wires
	wire [3:0] s;
	wire c_4;
	
	// An extra parameter for manipulating the simulation
	parameter stop_time=2000;
	
	// We initialize a VCD (Value Change Dump file) which will store all the 
	// value changes and variables. It can be viewed using the following command
	// Bash: ``` gtkwave dump.vcd``` 
	initial	begin
		$dumpfile("dump.vcd");
		$dumpvars(0,bit_4_ripple_carry_tb);
	end

	// Creation an instance named 'uut' of original module 'bit_4_full_addder' 
	bit_4_ripple_carry uut (
		.a(a), 
		.b(b), 
		.c_0(c_0), 
		.s(s), 
		.c_4(c_4)
	);

	// Uncomment one of the following to monitor the inputs and outputs 
    
	// Monitor Output in Hexadecimal
	// initial  $monitor("At time %t hex, a = %h, b = %h, s =%h, c_4 = %h ", $time, a,b,s,c_4);
    // Monitor Output in Binary
    // initial  $monitor("At time %t binary, a = %b, b = %b, s =%h, c_4 = %b ", $time, a,b,s,c_4);
    // Monitor Output in Decimal
    initial  $monitor("At time %t decimal, a = %d, b = %d, s =%h, c_4 = %d ", $time, a,b,s,c_4);

	initial #stop_time $finish;
	
	initial begin
	// Initialize your input. 
	// Always a good practice to initialize to prevent your 
	// design/model from getting stuck in 'z' or 'x' state 
		a = 0;
		b = 0;
		c_0 = 0;
	end
	
	always begin
	#5 a[0]=~a[0];
	end
	
	always begin
	#10 a[1]=~a[1];
	end
	
	always begin
	#20 a[2]=~a[2];
	end
	
	always begin
	#40 a[3]=~a[3];
	end
	
	always begin
	#80 b[0]=~b[0];
	end
	
	always begin
	#160 b[1]=~b[1];
	end
	
	always begin
	#320 b[2]=~b[2];
	end
	
	always begin
	#640 b[3]=~b[3];
	end
	
	always begin
	#1280 c_0=~c_0;
	end
      
endmodule