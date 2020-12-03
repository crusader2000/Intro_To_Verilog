`timescale 1ns / 1ps

module bit_4_ripple_carry_tb;
	reg [3:0] a;
	reg [3:0] b;
	reg c_0;
	wire [3:0] s;
	wire c_4;
	parameter stop_time=2000;
	bit_4_ripple_carry uut (
		.a(a), 
		.b(b), 
		.c_0(c_0), 
		.s(s), 
		.c_4(c_4)
	);
	initial #stop_time $finish;
	initial begin
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
	#15 a[2]=~a[2];
	end
	
	always begin
	#20 a[3]=~a[3];
	end
	
	always begin
	#25 b[0]=~b[0];
	end
	
	always begin
	#30 b[1]=~b[1];
	end
	
	always begin
	#35 b[2]=~b[2];
	end
	
	always begin
	#40 b[3]=~b[3];
	end
	
	always begin
	#45 c_0=~c_0;
	end
      
endmodule

