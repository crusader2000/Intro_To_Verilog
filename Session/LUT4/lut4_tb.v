`timescale 1ns / 1ps

module lut4_tb;
    

	// Inputs
    reg [3:0] in;
	// Outputs
    wire [0:0] out;

	// Configuration Inputs
    reg [0:0] cfg_clk;
    reg [0:0] cfg_e;
    reg [0:0] cfg_we;
    reg [0:0] cfg_i;

	parameter stop_time=2000;

	initial	begin
		$dumpfile("dump.vcd");
		$dumpvars(0,lut4_tb);
	end
	
	// Instantiate the Unit Under Test (UUT)
	lut4 uut (
		.in(in),
		.out(out),
		.cfg_clk(cfg_clk),
		.cfg_e(cfg_e),
		.cfg_we(cfg_we),
		.cfg_i(cfg_i)
	);

	initial #stop_time $finish;

	initial begin
        in = 0;
        cfg_clk = 0;
        cfg_e = 1;
        cfg_we = 0;
        cfg_i = 0;

        #5 cfg_e = 1;
        #5 cfg_we = 1;

        // cfg_d = 1010101010101010
        #10 cfg_i = 0; 
        #10 cfg_i = 1;
        #10 cfg_i = 0; 
        #10 cfg_i = 1;
        #10 cfg_i = 0; 
        #10 cfg_i = 1;
        #10 cfg_i = 0; 
        #10 cfg_i = 1;
        #10 cfg_i = 0; 
        #10 cfg_i = 1;
        #10 cfg_i = 0; 
        #10 cfg_i = 1;
        #10 cfg_i = 0; 
        #10 cfg_i = 1;
        #10 cfg_i = 0; 
        #10 cfg_i = 1;
      
        #5 cfg_e = 0;
        #5 cfg_we = 0;
    end
	
	always begin
		#5 cfg_clk=~cfg_clk;
	end 
	always begin
		#10 cfg_i=~cfg_i;
	end 
    always begin
        #2 in <= in+1;
    end
endmodule