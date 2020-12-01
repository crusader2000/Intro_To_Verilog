`timescale 1ns / 1ps

module decoder_83_tb;

	reg s_0;
	reg s_1;
	reg s_2;
	reg e;

	wire q_0;
	wire q_1;
	wire q_2;
	wire q_3;
	wire q_4;
	wire q_5;
	wire q_6;
	wire q_7;

	decoder_83 uut (
		.s_0(s_0), 
		.s_1(s_1), 
		.s_2(s_2), 
		.e(e), 
		.q_0(q_0), 
		.q_1(q_1), 
		.q_2(q_2), 
		.q_3(q_3), 
		.q_4(q_4), 
		.q_5(q_5), 
		.q_6(q_6), 
		.q_7(q_7)
	);

	initial begin
		
	$display ("e s_0 s_1 s_2 I0 I1 I2 I3 I4 I5 I6 I7");
$monitor ("%b %b  %b  %b  %b  %b  %b  %b  %b  %b  %b  %b", 
	    e,s_0,s_1,s_2,q_0,q_1,q_2,q_3,q_4,q_5,q_6,q_7);
		s_0 = 0;
		s_1 = 0;
		s_2 = 0;
		e = 1;
	end
	
      always begin
	#5 s_0=~s_0;
	end
	
	always begin
	#10 s_1=~s_1;
	end
	
   always begin
	#15 s_2=~s_2;
	end
endmodule

