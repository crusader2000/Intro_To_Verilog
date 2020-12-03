`timescale 1ns / 1ps
`include "encoder.v"
module encoder_tb;

	reg I_0;
	reg I_1;
	reg I_2;
	reg I_3;
	reg I_4;
	reg I_5;
	reg I_6;
	reg I_7;
	reg enable;

	wire Y_0;
	wire Y_1;
	wire Y_2;

	encoder uut (
		.I_0(I_0), 
		.I_1(I_1), 
		.I_2(I_2), 
		.I_3(I_3), 
		.I_4(I_4), 
		.I_5(I_5), 
		.I_6(I_6), 
		.I_7(I_7), 
		.enable(enable), 
		.Y_0(Y_0), 
		.Y_1(Y_1), 
		.Y_2(Y_2)
	);
	
	initial	begin
		$dumpfile("dump.vcd");
		$dumpvars(0,encoder_tb);
	end
	

	initial begin
		$display ("e I0 I1 I2 I3 I4 I5 I6 I7 Y0 Y1 Y2");
$monitor ("%b %b  %b  %b  %b  %b  %b  %b  %b  %b  %b  %b", 
	    enable,I_0,I_1,I_2,I_3,I_4,I_5,I_6,I_7,Y_0,Y_1,Y_2);
		I_0 = 0;
		I_1 = 0;
		I_2 = 0;
		I_3 = 0;
		I_4 = 0;
		I_5 = 0;
		I_6 = 0;
		I_7 = 0;
		enable = 1;

	end
    
      always #5 I_0=~I_0;
		
      always #10 I_1=~I_1;
	
      always #20 I_2=~I_2;
		
      always #40 I_3=~I_3;
		
      always #80 I_4=~I_4;
		
      always #160 I_5=~I_5;
		
      always #320 I_6=~I_6;
		
      always #640 I_7=~I_7;
			
endmodule