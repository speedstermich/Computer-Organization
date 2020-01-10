`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:30:04 12/07/2018 
// Design Name: 
// Module Name:    ID_module 
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
module ID_module(
    input clk,
    input reset,
    input [31:0] Instr,
	 input RegWrite_W,   //WE3
	 input[4:0] Write_register_W,
	 input[31:0] Write_data_W,   //WD3  writeback_data
	 input[31:0] PC4_D,     //PCplus4_D
	 input[31:0] PC4_W,
	 input[1:0] ForwardRSD, 
	 input[1:0] ForwardRTD,
	 input[31:0] ALUout_M,
    output[31:0] RF_RD1_trans,
    output[31:0] RF_RD2_trans,
    output[31:0] after_ext,
	 output[31:0] nextpc,   //PCBranchD
	 output pc_sel1,    //PCSrcD
	 output[4:0] write_register_D  //当前级的write_register
    );

    wire[31:0] pc_beq,pc_jal,RF_RD1,RF_RD2,pc_w;
	 wire[1:0] Extop,RegDst,pc_sel2;
	 assign pc_w=PC4_W-4;
	 
	 Controller Controller_D(.func(Instr[5:0]),.op(Instr[31:26]),.RegDst(RegDst),.Extop(Extop),.pc_sel1(pc_sel1),.pc_sel2(pc_sel2));
    EXT EXT(Instr[15:0],Extop,after_ext);
	 GRF GRF(clk,reset,pc_w,RegWrite_W,Instr[25:21],Instr[20:16],Write_register_W,Write_data_W,RF_RD1,RF_RD2);
	 CMP CMP(RF_RD1_trans,RF_RD2_trans,equal);
	 PC_beq PC_beq(after_ext,PC4_D,equal,pc_beq);
	 PC_jal PC_jal(Instr,PC4_D,pc_jal);
	 mux4_32 nextpc_2(.D1(pc_jal),.D2(pc_beq),.D3(RF_RD1_trans),.control(pc_sel2),.out(nextpc));
	 mux4_32 MFRSD(.D1(RF_RD1),.D2(ALUout_M),.D3(Write_data_W),.control(ForwardRSD),.out(RF_RD1_trans));
	 mux4_32 MFRTD(.D1(RF_RD2),.D2(ALUout_M),.D3(Write_data_W),.control(ForwardRTD),.out(RF_RD2_trans));
	 mux4_5 Wreg_D(.D1(Instr[20:16]),.D2(Instr[15:11]),.D3(5'b11111),.control(RegDst),.out(write_register_D));
	 endmodule
