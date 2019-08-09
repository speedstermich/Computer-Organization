`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:40:25 11/18/2018 
// Design Name: 
// Module Name:    nextPC 
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
module nextPC(
   input[31:0] PC,
	input[15:0] imm,    //beq中16位imm
	input[25:0] imm26,   //jal中26位imm
	input[31:0] jr_ra,    //jr时  ra存储的地址
	input[1:0] PCSrc,
	input jr,      //是jr指令信号
	input beq,
	input[31:0] zero,
	output reg[31:0] NPC,
	output[31:0] PCplus4
    );
	 assign PCplus4=PC+4;
	 reg[31:0] ext_imm=0;
	 always@(*)begin
	   if(jr)begin    //jr
		  NPC=jr_ra;
		end
		else if(PCSrc[1]==1&&PCSrc[0]==0)begin    //jal
		  NPC={PC[31:28],imm26,2'b00};
		end
		else if(zero==32'h00000000&&PCSrc[0]==1&&PCSrc[1]==0&&beq==1)begin   //beq
		  ext_imm={{16{imm[15]}},imm}<<2;
		  NPC=PC+4+ext_imm;
		end
		else begin
		  NPC=PC+4;
		end
	 end


endmodule
