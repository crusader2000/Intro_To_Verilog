`timescale 1ns / 1ps

module d_flipflop(
	input D,
	input clk,
	output reg Q
	);
	
	// The internal logic is run at every positive edge 
	// of clock cycle

	always @ (posedge clk) begin 
		Q = D ;
	end

endmodule