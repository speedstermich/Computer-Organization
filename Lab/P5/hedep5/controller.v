`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:52:46 11/24/2018 
// Design Name: 
// Module Name:    controller 
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
module controller(
    input [5:0] op,
    input [5:0] func,
    output reg [1:0] RegDst,
    output reg ALUSrc,
    output reg MemtoReg,
    output reg RegWrite,
    output reg MemWrite,
	 output reg branch,
    output reg [1:0] ExtOp,
    output reg [2:0] ALUctr,
    output reg [1:0] jump,
	 output reg b,
	 output reg r,
	 output reg i,
	 output reg l,
	 output reg s,
	 output reg j
    );
	 
	 /*
	 initial begin
		$display("%h, %h", op, func);
		$display("%b, %b", RegDst, ALUSrc);
	 end
	 */
	 initial begin
		RegDst = 2'b00;
		ALUSrc = 0;
		MemtoReg = 0;
		RegWrite = 0;
		MemWrite = 0;
		branch = 0;
		ExtOp = 2'b00;
		ALUctr = 3'b000;
		jump = 2'b00;
		b = 0;
		r = 0;
		i = 0;
		l = 0;
		s = 0;
		j = 0;
	 end
	 
	 always@(op or func) begin
		case(op)
			6'b000000:
				begin
					case(func)
						6'b100001://addu
						begin
							RegDst = 2'b01;
							ALUSrc = 0;
							MemtoReg = 0;
							RegWrite = 1;
							MemWrite = 0;
							branch = 0;
							ExtOp = 2'b00;
							ALUctr = 3'b010;
							jump = 2'b00;
							b = 0;
							r = 1;
							i = 0;
							l = 0;
							s = 0;
							j = 0;
						end
						6'b100011://subu
						begin
							RegDst = 2'b01;
							ALUSrc = 0;
							MemtoReg = 0;
							RegWrite = 1;
							MemWrite = 0;
							branch = 0;
							ExtOp = 2'b00;
							ALUctr = 3'b110;
							jump = 2'b00;
							b = 0;
							r = 1;
							i = 0;
							l = 0;
							s = 0;
							j = 0;
						end
						6'b001001://jalr
						begin
							RegDst = 2'b01;
							ALUSrc = 0;
							MemtoReg = 0;
							RegWrite = 1;
							MemWrite = 0;
							branch = 0;
							ExtOp = 2'b11;
							ALUctr = 3'b001;
							jump = 2'b11;
							b = 0;
							r = 0;
							i = 0;
							l = 0;
							s = 0;
							j = 1;
						end
						6'b001000://jr
						begin
							RegDst = 2'b00;
							ALUSrc = 0;
							MemtoReg = 0;
							RegWrite = 0;
							MemWrite = 0;
							branch = 0;
							ExtOp = 2'b11;
							ALUctr = 3'b001;
							jump = 2'b11;
							b = 1;
							r = 0;
							i = 0;
							l = 0;
							s = 0;
							j = 1;
						end
						default://error
						begin
							RegDst = 2'b00;
							ALUSrc = 0;
							MemtoReg = 0;
							RegWrite = 0;
							MemWrite = 0;
							branch = 0;
							ExtOp = 2'b00;
							ALUctr = 3'b000;
							jump = 2'b00;
							b = 0;
							r = 0;
							i = 0;
							l = 0;
							s = 0;
							j = 0;
						end
					endcase
				end
			6'b001101://ori
			begin
				RegDst = 2'b00;
				ALUSrc = 1;
				MemtoReg = 0;
				RegWrite = 1;
				MemWrite = 0;
				branch = 0;
				ExtOp = 2'b00;
				ALUctr = 3'b001;
				jump = 2'b00;
				b = 0;
				r = 0;
				i = 1;
				l = 0;
				s = 0;
				j = 0;
			end
			6'b100011://lw
			begin
				RegDst = 2'b00;
				ALUSrc = 1;
				MemtoReg = 1;
				RegWrite = 1;
				MemWrite = 0;
				branch = 0;
				ExtOp = 2'b01;
				ALUctr = 3'b010;
				jump = 2'b00;
				b = 0;
				r = 0;
				i = 0;
				l = 1;
				s = 0;
				j = 0;
			end
			6'b101011://sw
			begin
				RegDst = 2'b00;
				ALUSrc = 1;
				MemtoReg = 0;
				RegWrite = 0;
				MemWrite = 1;
				branch = 0;
				ExtOp = 2'b01;
				ALUctr = 3'b010;
				jump = 2'b00;
				b = 0;
				r = 0;
				i = 0;
				l = 0;
				s = 1;
				j = 0;
			end
			6'b000100://beq
			begin
				RegDst = 2'b00;
				ALUSrc = 0;
				MemtoReg = 0;
				RegWrite = 0;
				MemWrite = 0;
				branch = 1;
				ExtOp = 2'b01;
				ALUctr = 3'b110;
				jump = 2'b00;
				b = 1;
				r = 0;
				i = 0;
				l = 0;
				s = 0;
				j = 0;
			end
			6'b001111://lui
			begin
				RegDst = 2'b00;
				ALUSrc = 1;
				MemtoReg = 0;
				RegWrite = 1;
				MemWrite = 0;
				branch = 0;
				ExtOp = 2'b10;
				ALUctr = 3'b001;
				jump = 2'b00;
				b = 0;
				r = 0;
				i = 1;
				l = 0;
				s = 0;
				j = 0;
			end
			6'b000011://jal
			begin
				RegDst = 2'b10;
				ALUSrc = 0;
				MemtoReg = 0;
				RegWrite = 1;
				MemWrite = 0;
				branch = 0;
				ExtOp = 2'b00;
				ALUctr = 3'b000;
				jump = 2'b01;
				b = 0;
				r = 0;
				i = 0;
				l = 0;
				s = 0;
				j = 1;
			end
			6'b000010://j
			begin
				RegDst = 2'b00;
				ALUSrc = 0;
				MemtoReg = 0;
				RegWrite = 0;
				MemWrite = 0;
				branch = 0;
				ExtOp = 2'b00;
				ALUctr = 3'b000;
				jump = 2'b01;
				b = 0;
				r = 0;
				i = 0;
				l = 0;
				s = 0;
				j = 1;
			end
			default://error
			begin
				RegDst = 2'b00;
				ALUSrc = 0;
				MemtoReg = 0;
				RegWrite = 0;
				MemWrite = 0;
				branch = 0;
				ExtOp = 2'b00;
				ALUctr = 3'b000;
				jump = 2'b00;
				b = 0;
				r = 0;
				i = 0;
				l = 0;
				s = 0;
				j = 0;
			end
		endcase
	 end

endmodule

