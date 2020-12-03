`timescale 1ns / 1ps
module serial_adder(
	input [3:0] a,
	input [3:0] b,
	input c_in,
	input clk,
	output reg [3:0] s,
	output reg [3:0] i,
	output c_out
	);

reg c;
//integer i=0;
initial  s=0;
initial i=0;
	always @ (posedge clk) begin
		
		if(i <4) begin
			s[i]=a[i]^b[i]^c;
			c=(a[i]^b[i])&c | a[i]&b[i];
			i=i+1;
	end
		else begin
		i=0;
		s=0;
		end
	end
endmodule
