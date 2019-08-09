`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:34:11 12/08/2018 
// Design Name: 
// Module Name:    EX_module 
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
module EX_module(
    input Start,
    input clk,
	 input reset,
    input[31:0] PC8_E_out,
    input[31:0] Instr,
    input[31:0] RF_RD1,
    input[31:0] RF_RD2,
    input[31:0] after_ext,
	 input[1:0] ForwardRSE, 
	 input[1:0] ForwardRTE,
	 input[31:0] ALUout_M,
	 input[31:0] Write_data_W,
    output[31:0] ALUout,
	 output[31:0] RF_RD2_trans,
	 output RegWrite_E,
	 output Busy
    );
    wire ALUSrc,J;
	 wire[3:0] ALUop;
	 wire[1:0] mf_type;
	 wire[31:0] ALUB,RF_RD1_trans,ALUout1,ALUout2,HI,LO;       //ALUB进入ALU的第二个数据

   
	Controller Controller_E(.func(Instr[5:0]),.op(Instr[31:26]),.ALUSrc(ALUSrc),.RegWrite(RegWrite_E),.ALUop(ALUop),.J(J),.mf_type(mf_type));
	mux2_32 ALU_data_B(RF_RD2_trans,after_ext,ALUSrc,ALUB);
	ALU ALU(RF_RD1_trans,ALUB,Instr[10:6],ALUop,ALUout1);
	XALU XALU(clk,reset,Instr,RF_RD1_trans,RF_RD2_trans,Start,HI,LO,Busy);
	mux4_32 MFRSE(.D1(RF_RD1),.D2(ALUout_M),.D3(Write_data_W),.control(ForwardRSE),.out(RF_RD1_trans));
	mux4_32 MFRTE(.D1(RF_RD2),.D2(ALUout_M),.D3(Write_data_W),.control(ForwardRTE),.out(RF_RD2_trans));
	mux2_32 aluout2(ALUout1,PC8_E_out,J,ALUout2);
	mux4_32 aluout(.D1(ALUout2),.D2(HI),.D3(LO),.control(mf_type),.out(ALUout));
endmodule
