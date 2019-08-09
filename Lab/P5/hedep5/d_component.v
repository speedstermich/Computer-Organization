`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:32:05 11/24/2018 
// Design Name: 
// Module Name:    d_component 
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
/*`include "controller.v"
`include "regfile.v"
`include "comparator.v"
`include "extender.v"
`include "mux4_32.v"
`include "mux2_32.v"
`include "mux4_5.v"*/
module d_component(
    input clk,
    input reset,
    input [31:0] instr,
	 input we,
	 input [4:0] wa,
	 input [31:0] wd,
	 input [31:0] pc4_d,
	 input [31:0] pc4_w,
	 input [1:0] ForwardRSD, 
	 input [1:0] ForwardRTD,
	 input [31:0] AO_Mout,
    output [31:0] RF_RD1,
    output [31:0] RF_RD2,
    output [31:0] imm32,
	 output [31:0] nextpc,
	 output pc_sel,
	 output [4:0] waout
    );
	 
	 wire branch, equal, npc_sel, pause;
	 wire [1:0] ExtOp, jump, RegDst;
	 wire [31:0] pc_w, npcj, npc, npcb, RF_RD1c, RF_RD2c;
	 
	 assign pc_w = pc4_w - 4;
	 assign pc_sel = (branch & equal) | jump[0];
	 assign npc_sel = branch & equal;
	 
	 controller d_ctr(.op(instr[31:26]), .func(instr[5:0]), .branch(branch), .ExtOp(ExtOp), .jump(jump), .RegDst(RegDst));
	 regfile RF(clk, reset, pc_w, we, instr[25:21], instr[20:16], wa, wd, RF_RD1, RF_RD2);
	 comparator CMP(RF_RD1c, RF_RD2c, equal);
	 extender EXT(instr, ExtOp, imm32);
	 assign npcj = {pc4_d[31:28], instr[25:0], 2'b00};
	 assign npcb = pc4_d + (imm32 << 2);
	 mux2_32 NPC(npcj, npcb, npc_sel, npc);
	 mux2_32 next(npc, RF_RD1c, jump[1], nextpc);
	 mux4_5 MUX_GPRwa(.d0(instr[20:16]), .d1(instr[15:11]), .d2(5'b11111), .s(RegDst), .dout(waout));
	 
	 mux4_32 MFRSD(.d0(RF_RD1), .d1(AO_Mout), .d2(wd), .s(ForwardRSD), .dout(RF_RD1c));
	 mux4_32 MFRTD(.d0(RF_RD2), .d1(AO_Mout), .d2(wd), .s(ForwardRTD), .dout(RF_RD2c));
	 /*
	 always@(ForwardRSD)
	 $display("%d %h", $time, RF_RD1c);
	 */
endmodule
