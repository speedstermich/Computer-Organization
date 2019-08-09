`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:34:02 11/16/2018 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [31:0] srca,
    input [31:0] srcb,
    input [2:0] ALUctr,
    output reg [31:0] ALUResult,
    output Zero
    );
	 
	 assign Zero = (ALUResult == 0);
	 
	 always@(srca or srcb or ALUctr)
		case(ALUctr)
			3'b010 : ALUResult = srca + srcb;
			3'b001 : ALUResult = srca | srcb;
			3'b110 : ALUResult = srca - srcb;
		endcase
endmodule
