`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:35:02 12/08/2018 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input[31:0] A,
	 input[31:0] B,
	 input[1:0] ALUop,
	 output reg[31:0] Result=0
    );
   always@(*)begin
	   case(ALUop)
		2'b00:Result=A+B;
		2'b01:Result=A-B;
		2'b10:Result=A|B;
		default:Result=A+B;
		endcase
    end

endmodule
