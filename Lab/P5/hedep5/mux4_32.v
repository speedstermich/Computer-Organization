`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:10:30 11/16/2018 
// Design Name: 
// Module Name:    mux4_32 
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

module mux4_32(
    input [31:0] d0,
    input [31:0] d1,
    input [31:0] d2,
    input [31:0] d3,
    input [1:0] s,
    output reg [31:0] dout
    );
	 
	 always@(d0 or d1 or d2 or d3 or s)
		case(s)
         2'b00: dout = d0;
         2'b01: dout = d1;
         2'b10: dout = d2;
         2'b11: dout = d3;
      endcase

endmodule

