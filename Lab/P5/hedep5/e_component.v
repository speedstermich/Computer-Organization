`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:32:00 11/24/2018 
// Design Name: 
// Module Name:    e_component 
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
module e_component(
    input [31:0] instr,
    input [31:0] RF_RD1,
    input [31:0] RF_RD2,
    input [31:0] imm32,
	 input [1:0] ForwardRSE, 
	 input [1:0] ForwardRTE,
	 input [31:0] AO_Mout,
	 input [31:0] wd,
    output [31:0] ALUResult,
	 output rw,
	 output [31:0] RF_RD2c,
	 input [31:0] pc8/*
    output Zero*/
    );
	 
	 wire ALUSrc, Zero, j;
	 wire [2:0] ALUctr;
	 wire [31:0] srcb, RF_RD1c, ALUResult1;
	 
	 controller e_ctr(.op(instr[31:26]), .func(instr[5:0]), .ALUSrc(ALUSrc), .ALUctr(ALUctr), .RegWrite(rw), .j(j));
	 mux2_32 MUX_ALUb(RF_RD2c, imm32, ALUSrc, srcb);
	 alu ALU(RF_RD1c, srcb, ALUctr, ALUResult1, Zero);
	 
	 mux4_32 MFRSE(.d0(RF_RD1), .d1(AO_Mout), .d2(wd), .s(ForwardRSE), .dout(RF_RD1c));
	 mux4_32 MFRTE(.d0(RF_RD2), .d1(AO_Mout), .d2(wd), .s(ForwardRTE), .dout(RF_RD2c));
	 mux2_32 pcwrite(ALUResult1, pc8, j, ALUResult);
	 
endmodule
