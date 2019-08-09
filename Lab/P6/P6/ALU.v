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
	 input[4:0] shamt,
	 input[3:0] ALUop,
	 output reg[31:0] Result=0
    );
   always@(*)begin
	   case(ALUop)
		4'b0000:Result=A+B;
		4'b0001:Result=A-B;
		4'b0010:Result=A|B;
		4'b0011:Result=A&B;
		4'b0100:Result=A^B;
		4'b0101:Result=~(A|B);
		4'b0110:Result=B<<shamt;
		4'b0111:Result=B<<A[4:0];
		4'b1000:Result=B>>shamt;
		4'b1001:Result=B>>A[4:0];
		4'b1010:Result=$signed(B)>>>shamt;
		4'b1011:Result=$signed(B)>>>A[4:0];
		4'b1100:Result=($signed(A)<$signed(B))?32'b1:32'b0;
		4'b1101:Result=(A<B)?32'b1:32'b0;
		default:Result=A+B;
		endcase
    end

endmodule
