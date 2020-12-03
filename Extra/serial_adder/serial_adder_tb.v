`timescale 1ns / 1ps

module serial_adder_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c_in;
	reg clk;

	// Outputs
	wire [3:0] s;
	wire [3:0] i;
	wire c_out;
	
	initial	begin
		$dumpfile("dump.vcd");
		$dumpvars(0,serial_adder_tb);
	end
	

	// Instantiate the Unit Under Test (UUT)
	serial_adder uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.clk(clk), 
		.s(s), 
		.i(i), 
		.c_out(c_out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c_in = 0;
		clk = 0;
#45;
	
	end
	 integer k,j;
    initial begin
	 #45;
        for(k=0;k <=15;k = k+1)
            for(j=0;j <=15;j = j+1) 
            begin
                a <= k; 
                b <= j;
                #50;
            end     
    end  
	
always begin
#5 clk=~clk;
end 
	
      
endmodule

