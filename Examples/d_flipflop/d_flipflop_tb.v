`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:04:08 10/15/2019
// Design Name:   d_flipflop
// Module Name:   /home/ansh/Desktop/classes/sem2-1/vlsi design/assgn5/dflipflop/d_flipflop_tb.v
// Project Name:  dflipflop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: d_flipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module d_flipflop_tb;

	// Inputs
	reg D;
	reg clk;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	d_flipflop uut (
		.D(D), 
		.clk(clk), 
		.Q(Q)
	);

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

