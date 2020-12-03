`timescale 1ns / 1ps

module counter(
	input clk,
	output reg [3:0] counter
	);

    // Initialize to prevent errors due to unknown or don't care state
    initial begin
      counter <= 0;
    end

	// The internal logic is run at every positive edge 
	// of clock cycle
	always @ (posedge clk) begin 

		counter <= counter + 4'd1 ;

		// Comment above line and uncomment and run one of the following lines

		// counter <= counter + 4'b0001;
		// counter <= counter + 4'd2;
		// counter <= counter + 4'd0010;
		// counter <= counter + 4'd0;
	end

endmodule