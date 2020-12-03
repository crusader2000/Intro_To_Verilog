`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:19:40 10/09/2019
// Design Name:   shiftandadd
// Module Name:   /home/ansh/Desktop/classes/sem2-1/vlsi design/assgn4/shiftandadd/shiftandadd_tb.v
// Project Name:  shiftandadd
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shiftandadd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shiftandadd_tb;

	// Inputs
	reg [3:0] x;
	reg [3:0] y;

	// Outputs
	wire [7:0] s;

	// Instantiate the Unit Under Test (UUT)
	shiftandadd uut (
		.x(x), 
		.y(y), 
		.s(s)
	);

initial #100 $finish;
	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;

	end
	
	 integer i,j;
    initial begin
        for(i=1;i <=15;i = i+1)
            for(j=1;j <=15;j = j+1) 
            begin
                x <= i; 
                y <= j;
                #1;
            end     
    end  
      
endmodule

