`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:14:08 11/18/2018 
// Design Name: 
// Module Name:    mips 
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
module mips(clk,reset);
    input clk;
	 input reset;
	 wire ALUSrc,RegWrite,MemWrite,jr;
	 wire[1:0] MemtoReg,RegDst,PCSrc,Extop,ALUop;
	 wire[4:0] rs,rt,rd,Write_register;
	 wire[5:0] func,op;
	 wire[15:0] imm;
	 wire[25:0]  imm26;
	 wire[31:0] NPC,PC,PCplus4,aluout,after_ext,DMout,Read_data1,Read_data2,DtoALU2,Write_data;
	/*module Controller(
   input[5:0] func,
	input[5:0] op,
	output reg[1:0] RegDst,
	output reg ALUSrc,
	output reg[1:0] MemtoReg,
	output reg RegWrite,
	output reg MemWrite,
	output reg[1:0] PCSrc,
	output reg[1:0] Extop,
	output reg[1:0] ALUop,
	output reg jr
    );*/
	 Controller control(func,op,RegDst,ALUSrc,MemtoReg,RegWrite,MemWrite,PCSrc,Extop,ALUop,jr);
    /* module PC(
     input[31:0] NPC,
	  input clk,
	  input reset,
	  output reg[31:0] PC
    );*/
	 PC pc(NPC,clk,reset,PC);
	 /*module nextPC(
   input[31:0] PC,
	input[15:0] imm,    //beq中16位imm
	input[25:0] imm26,   //jal中26位imm
	input[31:0] jr_ra,    //jr时  ra存储的地址
	input[1:0] PCSrc,
	input jr,      //是jr指令信号
	input[31:0] zero,
	output reg[31:0] NPC,
	output[31:0] PCplus4
    );*/
	 nextPC npc(PC,imm,imm26,Read_data1,PCSrc,jr,aluout,NPC,PCplus4);
	 /*module GRF(
     input[31:0] WPC,
     input clk,
	  input reset,
	  input RegWrite,
	  input[4:0] Read_register1,
	  input[4:0] Read_register2,
	  input[4:0] Write_register,
	  input[31:0] Write_data,
	  output[31:0] Read_data1,
	  output[31:0] Read_data2
    );*/
	 GRF grf(PC,clk,reset,RegWrite,rs,rt,Write_register,Write_data,Read_data1,Read_data2);
	 /*module IM(
      input[31:0] addr,
		output reg[5:0] op,
		output reg[5:0] func,
		output reg[4:0] rs,
		output reg[4:0] rt,
		output reg[4:0] rd,
		output reg[15:0] imm,
		output reg[25:0] imm26
    );*/
	 IM Im(PC,op,func,rs,rt,rd,imm,imm26);
	 /*module DM(
    input[31:0] pc,
    input[31:0] addr,
	 input clk,
	 input reset,
	 input MemWrite,
	 input[31:0] MemData,
	 output[31:0] out
    );*/
	 DM Dm(PC,aluout,clk,reset,MemWrite,Read_data2,DMout);
	 /*module Extender(
   input[15:0] imm,
	input[1:0] Extop,
	output reg[31:0] after_ext
    );*/
	 Extender extender(imm,Extop,after_ext);
	 /*module ALU(
    input[31:0] A,
	 input[31:0] B,
	 input[1:0] ALUop,
	 output reg[31:0] Result
    );*/
	 ALU alu(Read_data1,DtoALU2,ALUop,aluout);
	 mux3_5 find_Wreg(RegDst,rt,rd,5'b11111,Write_register);
	 mux3_32 getWD(MemtoReg,aluout,DMout,PCplus4,Write_data);
	 mux2_32 getaludata2(ALUSrc,Read_data2,after_ext,DtoALU2);
	 

endmodule
