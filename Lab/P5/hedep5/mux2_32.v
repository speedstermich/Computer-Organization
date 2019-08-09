`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:07:57 11/16/2018 
// Design Name: 
// Module Name:    mux2_32 
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

module mux2_32
	(input [31:0] d0,
    input [31:0] d1,
    input s,
    output [31:0] y
    );

	assign y = s ? d1 : d0;
endmodule
