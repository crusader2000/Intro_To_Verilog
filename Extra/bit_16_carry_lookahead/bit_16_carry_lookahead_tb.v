`timescale 1ns / 1ps


module bit_16_carry_lookahead_tb;

	reg [15:0] a;
	reg [15:0] b;
	reg c_0;

	wire [15:0] s;
	wire c_16;
parameter stop_time=2000;
	bit_16_carry_lookahead uut (
		.a(a), 
		.b(b), 
		.c_0(c_0), 
		.s(s), 
		.c_16(c_16)
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
	#25 a[4]=~a[4];
	end
	
	always begin
	#30 a[5]=~a[5];
	end
	
	always begin
	#35 a[6]=~a[6];
	end
	
	always begin
	#40 a[7]=~a[7];
	end
	
	always begin
	#45 a[8]=~a[8];
	end
	
	always begin
	#50 a[9]=~a[9];
	end
	
	always begin
	#55 a[10]=~a[10];
	end
	
	always begin
	#60 a[11]=~a[11];
	end
	
	always begin
	#65 a[12]=~a[12];
	end
	
	always begin
	#70 a[13]=~a[13];
	end
	
	always begin
	#80 a[14]=~a[14];
	end
	
	always begin
	#85 a[15]=~a[15];
	end

	always begin
	#90 b[0]=~b[0];
	end
	
	always begin
	#95 b[1]=~b[1];
	end
	
	always begin
	#100 b[2]=~b[2];
	end
	
	always begin
	#105 b[3]=~b[3];
	end
		
	always begin
	#110 b[4]=~b[4];
	end
	
	always begin
	#115 b[5]=~b[5];
	end
	
	always begin
	#120 b[6]=~b[6];
	end
	
	always begin
	#125 b[7]=~b[7];
	end
	
	always begin
	#130 b[8]=~b[8];
	end
	
	always begin
	#135 b[9]=~b[9];
	end
	
	always begin
	#140 b[10]=~b[10];
	end
	
	always begin
	#145 b[11]=~b[11];
	end
	
	always begin
	#150 b[12]=~b[12];
	end
	
	always begin
	#155 b[13]=~b[13];
	end
	
	always begin
	#160 b[14]=~b[14];
	end
	
	always begin
	#165 b[15]=~b[15];
	end
	always begin
	#170 c_0=~c_0;
	end
	   
endmodule
