`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:28 11/17/2018 
// Design Name: 
// Module Name:    Extender 
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
module Extender(
   input[15:0] imm,
	input[1:0] Extop,
	output reg[31:0] after_ext=0
    );
    always@(imm or Extop)begin
	   case(Extop)
		  2'b00:after_ext={{16{1'b0}}, imm};
		  2'b01:after_ext={{16{imm[15]}}, imm};
		  2'b10:after_ext={imm, {16{1'b0}}};
		endcase
	 end
endmodule
