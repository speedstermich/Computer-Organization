`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:33:50 12/08/2018 
// Design Name: 
// Module Name:    MEM_module 
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
module MEM_module(
     input clk,
     input reset,
	  input[31:0] PC_M,   //PC4_M-4 
     input[31:0] Instr,
     input[31:0] ALUout_M,
     input[31:0] WD,   //RT_M_out
	  input ForwardRTM,
	  input[31:0] Write_data_W,
     output[31:0] DMout,
	  output[3:0] BE
    );
	 
	 wire MemWrite,ext_op;
	 wire[31:0] Write_data_trans;
	 wire[1:0] s_l_op;
	 
	 
	 Controller Controller_M(.func(Instr[5:0]),.op(Instr[31:26]),.MemWrite(MemWrite),.s_l_op(s_l_op));
	 ByteEnable ByteEnable(s_l_op,ALUout_M,BE);
    DM DM(clk,reset,PC_M,ALUout_M,MemWrite,Write_data_trans,BE,DMout);
	 mux2_32 MFRTM(WD,Write_data_W,ForwardRTM,Write_data_trans);  //WD--RT_M_out

endmodule
