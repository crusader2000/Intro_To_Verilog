`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:50:48 09/09/2019 
// Design Name: 
// Module Name:    demux_83 
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
module demux_83(

	input s1,s2,s3,enable,y,
	output I0,I1,I2,I3,I4,I5,I6,I7
    );

demux_42 a(s1,s2,s3 & enable,y,I0,I1,I2,I3);

demux_42 b(s1,s2,!s3 & enable,y,I4,I5,I6,I7);


endmodule
