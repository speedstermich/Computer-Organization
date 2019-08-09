`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:56:07 11/24/2018 
// Design Name: 
// Module Name:    extender 
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
module extender(
    input [31:0] imm,
    input [1:0] ExtOp,
	 //input [31:0] pc4,
    output reg [31:0] out
    );
	 
	 always@(imm or ExtOp) begin
		case(ExtOp)
			2'b00 : out = {{16{1'b0}}, imm[15:0]};
			2'b01 : out = {{16{imm[15]}}, imm[15:0]};
			2'b10 : out = {imm[15:0], {16{1'b0}}};
			//2'b11 : out = {pc4[31:28], imm[26:0], 2'b00};
			default : out = 32'bx;
		endcase
	 end
	 
endmodule
