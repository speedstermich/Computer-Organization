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
	 wire ALUSrc,RegWrite,MemWrite,jr,beq;
	 wire[1:0] MemtoReg,RegDst,PCSrc,Extop,ALUop;
	 wire[4:0] rs,rt,rd,Write_register;
	 wire[5:0] func,op;
	 wire[15:0] imm;
	 wire[25:0]  imm26;
	 wire[31:0] NPC,PC,PCplus4,aluout,after_ext,DMout,Read_data1,Read_data2,DtoALU2,Write_data;

	 Controller control(func,op,RegDst,ALUSrc,MemtoReg,RegWrite,MemWrite,PCSrc,Extop,ALUop,jr,beq);
	 PC pc(NPC,clk,reset,PC);
	 nextPC npc(PC,imm,imm26,Read_data1,PCSrc,jr,beq,aluout,NPC,PCplus4);
	 GRF grf(PC,clk,reset,RegWrite,rs,rt,Write_register,Write_data,Read_data1,Read_data2);
	 IM Im(PC,op,func,rs,rt,rd,imm,imm26);
	 DM Dm(PC,aluout,clk,reset,MemWrite,Read_data2,DMout);
	 Extender extender(imm,Extop,after_ext);
	 ALU alu(Read_data1,DtoALU2,ALUop,aluout);
	 mux3_5 find_Wreg(RegDst,rt,rd,5'b11111,Write_register);
	 mux3_32 getWD(MemtoReg,aluout,DMout,PCplus4,Write_data);
	 mux2_32 getaludata2(ALUSrc,Read_data2,after_ext,DtoALU2);
	 

endmodule
