`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:30 11/24/2018 
// Design Name: 
// Module Name:    mux4_5 
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
module mux4_5(
    input [4:0] d0,
    input [4:0] d1,
    input [4:0] d2,
    input [4:0] d3,
    input [1:0] s,
    output reg [4:0] dout
    );
	 
	 always@(d0 or d1 or d2 or d3 or s)
		case(s)
         2'b00: dout = d0;
         2'b01: dout = d1;
         2'b10: dout = d2;
         2'b11: dout = d3;
      endcase


endmodule
