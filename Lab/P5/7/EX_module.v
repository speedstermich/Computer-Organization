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
	 output RegWrite_E
    );
    wire ALUSrc,J;
	 wire[1:0] ALUop;
	 wire[31:0] ALUB,RF_RD1_trans,ALUout1;       //ALUB进入ALU的第二个数据
   
	Controller Controller_E(.func(Instr[5:0]),.op(Instr[31:26]),.ALUSrc(ALUSrc),.RegWrite(RegWrite_E),.ALUop(ALUop),.J(J));
	mux2_32 ALU_data_B(RF_RD2_trans,after_ext,ALUSrc,ALUB);
	ALU ALU(RF_RD1_trans,ALUB,ALUop,ALUout1);
	mux4_32 MFRSE(.D1(RF_RD1),.D2(ALUout_M),.D3(Write_data_W),.control(ForwardRSE),.out(RF_RD1_trans));
	mux4_32 MFRTE(.D1(RF_RD2),.D2(ALUout_M),.D3(Write_data_W),.control(ForwardRTE),.out(RF_RD2_trans));
	mux2_32 aluout(ALUout1,PC8_E_out,J,ALUout);
endmodule
