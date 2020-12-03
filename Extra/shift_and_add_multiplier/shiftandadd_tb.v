`timescale 1ns / 1ps

module shiftandadd_tb;

	// Inputs
	reg [3:0] x;
	reg [3:0] y;

	// Outputs
	wire [7:0] s;

	// Instantiate the Unit Under Test (UUT)
	shiftandadd uut (
		.x(x), 
		.y(y), 
		.s(s)
	);
	initial	begin
		$dumpfile("dump.vcd");
		$dumpvars(0,shiftandadd_tb);
	end
	

initial #100 $finish;
	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;

	end
	
	 integer i,j;
    initial begin
        for(i=1;i <=15;i = i+1)
            for(j=1;j <=15;j = j+1) 
            begin
                x <= i; 
                y <= j;
                #1;
            end     
    end  
      
endmodule

