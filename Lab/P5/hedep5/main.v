`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:24 11/23/2018 
// Design Name: 
// Module Name:    main 
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
`include "if_component.v"
`include "fd_register.v"
`include "d_component.v"
`include "de_register.v"
`include "e_component.v"
`include "em_register.v"
`include "m_component.v"
`include "mw_register.v"
`include "w_component.v"
`include "add.v"
`include "alu.v"
`include "comparator.v"
`include "controller.v"
`include "dm.v"
`include "extender.v"
`include "hazard_unit.v"
`include "im.v"
`include "mux4_5.v"
`include "mux2_32.v"
`include "mux4_32.v"
`include "PCflopr.v"
`include "regfile.v"
module main(
	 input clk,
	 input reset,
	 output [31:0] IR_Dout,
	 output [31:0] PC4_Dout,
	 output [31:0] PC8_Dout,
	 output [31:0] IR_Eout,
	 output [31:0] PC4_Eout,
	 output [31:0] PC8_Eout,
	 output [31:0] RS_Eout,
	 output [31:0] RT_Eout,
	 output [31:0] EXT_Eout,
	 output [4:0] WA_Eout,
	 output [31:0] IR_Mout,
	 output [31:0] PC4_Mout,
	 output [31:0] AO_Mout,
	 output [31:0] RT_Mout,
	 output [4:0] WA_Mout,
	 output RW_Mout,
	 output [31:0] IR_Wout,
	 output [31:0] PC4_Wout,
	 output [31:0] AO_Wout,
	 output [31:0] DR_Wout,
	 output [4:0] WA_Wout,
	 output RW_Wout,
	 output stall
    );
	 
	 wire [31:0] IR_Din, PC4_Din, PC8_Din, pcnext, pcnext1/*, IR_Dout, PC4_Dout, PC8_Dout*/;
	 wire [31:0] wd, RF_RD1, RF_RD2, imm32, ALUResult;
	 //wire [31:0] IR_Eout, PC4_Eout, PC8_Eout, RS_Eout, RT_Eout, EXT_Eout;
	 //wire [31:0] IR_Mout, PC4_Mout, PC8_Mout, AO_Mout, RT_Mout;
	 wire [31:0] pc_m, readdata, wmd/*, IR_Wout, PC4_Wout, PC8_Wout, AO_Wout, DR_Wout*/;
	 wire [4:0] wa, WA_Ein;
	 wire pc_sel, clear, RW_Min;
	 wire [1:0] ForwardRSD, ForwardRTD, ForwardRSE, ForwardRTE;
	 wire ForwardRTM;
	 
	 assign pc_m = PC4_Mout - 4;
	 //assign clear = 1'b0;
	 
	if_component IF(clk, reset, stall, pcnext, IR_Din, PC4_Din, PC8_Din);
	fd_register FDRG(clk, reset, stall, IR_Din, PC4_Din, PC8_Din, IR_Dout, PC4_Dout, PC8_Dout);
	d_component D(clk, reset, IR_Dout, RW_Wout, WA_Wout, wd, PC4_Dout, PC4_Wout, ForwardRSD, ForwardRTD, AO_Mout, RF_RD1, RF_RD2, imm32, pcnext1, pc_sel, WA_Ein);
	de_register DERG(clk, reset, stall, IR_Dout, PC4_Dout, PC8_Dout, RF_RD1, RF_RD2, imm32, WA_Ein, IR_Eout, PC4_Eout, PC8_Eout, RS_Eout, RT_Eout, EXT_Eout, WA_Eout);
	e_component E(IR_Eout, RS_Eout, RT_Eout, EXT_Eout, ForwardRSE, ForwardRTE, AO_Mout, wd, ALUResult, RW_Min, wmd, PC8_Eout);
	em_register EMRG(clk, reset, IR_Eout, PC4_Eout, ALUResult, wmd, WA_Eout, RW_Min, IR_Mout, PC4_Mout, AO_Mout, RT_Mout, WA_Mout, RW_Mout); 
	m_component M(clk, reset, pc_m, IR_Mout, AO_Mout, RT_Mout, ForwardRTM, wd, readdata);
	mw_register MWRG(clk, reset, IR_Mout, PC4_Mout, AO_Mout, readdata, WA_Mout, RW_Mout, IR_Wout, PC4_Wout, AO_Wout, DR_Wout, WA_Wout, RW_Wout);
	w_component W(IR_Wout, AO_Wout, DR_Wout, wd);
	
	mux2_32 npc(PC4_Din, pcnext1, pc_sel, pcnext);
	
	hazard_unit HU(IR_Dout, IR_Eout, IR_Mout, RW_Mout, RW_Wout, WA_Mout, WA_Wout, ForwardRSD, ForwardRTD, ForwardRSE, ForwardRTE, ForwardRTM, stall);
	
endmodule
