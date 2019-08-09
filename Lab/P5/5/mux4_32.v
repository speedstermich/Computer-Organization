`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:58:46 12/09/2018 
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
   input[31:0] D1,
	input[31:0] D2,
	input[31:0] D3,
	input[31:0] D4,
	input[1:0] control,
	output reg[31:0] out
    );
	 
	 always@(*)begin
	   case(control)
		  2'b00:out=D1;
		  2'b01:out=D2;
		  2'b10:out=D3;
		  2'b11:out=D4;
		  default:out=D1;
		endcase
	 end


endmodule
