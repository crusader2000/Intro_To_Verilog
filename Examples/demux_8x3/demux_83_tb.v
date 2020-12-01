`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:48:39 09/10/2019
// Design Name:   demux_83
// Module Name:   /home/ansh/Desktop/classes/sem2-1/vlsi design/assgn2/demux/demux_83_tb.v
// Project Name:  demux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demux_83
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demux_83_tb;

	// Inputs
	reg s1;
	reg s2;
	reg s3;
	reg enable;
	reg y;

	// Outputs
	wire I0;
	wire I1;
	wire I2;
	wire I3;
	wire I4;
	wire I5;
	wire I6;
	wire I7;

	// Instantiate the Unit Under Test (UUT)
	demux_83 uut (
		.s1(s1), 
		.s2(s2), 
		.s3(s3), 
		.enable(enable), 
		.y(y), 
		.I0(I0), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3), 
		.I4(I4), 
		.I5(I5), 
		.I6(I6), 
		.I7(I7)
	);

	initial begin
	$display ("enable   y   s1   s2   s3   I0   I1   I2  I3  I4  I5  I6  I7");
$monitor (" %b     %b    %b    %b   %b   %b    %b    %b   %b  %b    %b    %b   %b", 
	    enable,y,s1,s2,s3,I0,I1,I2,I3,I4,I5,I6,I7);
		// Initialize Inputs
		s1 = 0;
		s2 = 0;
		s3 = 0;
		enable = 1;
		y = 0;

	end
      always begin
	#5 y=~y;
	end
	always begin
	#10 s1=~s1;
	end
	
	always begin
	#15 s2=~s2;
	end
	
	always begin
	#20 s3=~s3;
	end
	
endmodule

`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:48:39 09/10/2019
// Design Name:   demux_83
// Module Name:   /home/ansh/Desktop/classes/sem2-1/vlsi design/assgn2/demux/demux_83_tb.v
// Project Name:  demux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demux_83
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demux_83_tb;

	// Inputs
	reg s1;
	reg s2;
	reg s3;
	reg enable;
	reg y;

	// Outputs
	wire I0;
	wire I1;
	wire I2;
	wire I3;
	wire I4;
	wire I5;
	wire I6;
	wire I7;

	// Instantiate the Unit Under Test (UUT)
	demux_83 uut (
		.s1(s1), 
		.s2(s2), 
		.s3(s3), 
		.enable(enable), 
		.y(y), 
		.I0(I0), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3), 
		.I4(I4), 
		.I5(I5), 
		.I6(I6), 
		.I7(I7)
	);

	initial begin
	$display ("enable   y   s1   s2   s3   I0   I1   I2  I3  I4  I5  I6  I7");
$monitor (" %b     %b    %b    %b   %b   %b    %b    %b   %b  %b    %b    %b   %b", 
	    enable,y,s1,s2,s3,I0,I1,I2,I3,I4,I5,I6,I7);
		// Initialize Inputs
		s1 = 0;
		s2 = 0;
		s3 = 0;
		enable = 1;
		y = 0;

	end
      always begin
	#5 y=~y;
	end
	always begin
	#10 s1=~s1;
	end
	
	always begin
	#15 s2=~s2;
	end
	
	always begin
	#20 s3=~s3;
	end
	
endmodule

