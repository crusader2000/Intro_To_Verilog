`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:59:04 10/14/2019 
// Design Name: 
// Module Name:    d_flipflop 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module d_flipflop(
    input D,
	 input clk,
	 output reg Q
	 );
	
always @ (posedge clk) begin 
 Q = D ;
end

endmodule
