`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:05:48 12/07/2018 
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
module mips(
    input clk,
	 input reset
    );
    
	 
	 wire stall,RegWrite_W,RegWrite_M,RegWrite_E,ForwardRTM,pc_sel1;
	 wire[1:0] ForwardRSD,ForwardRTD,ForwardRSE,ForwardRTE;
	 wire[4:0] write_register_D,write_register_E_out,write_register_M_out,write_register_W_out;
	 wire[31:0] npc,IR_D_in,PC4_D_in,PC8_D_in,IR_D_out,PC4_D_out,PC8_D_out,
	            Write_data_W,PC4_W_out,ALUout_M_out,RF_RD1,RF_RD2,after_ext,nextpc,
	            IR_E_out,PC4_E_out,PC8_E_out,RS_E_out,RT_E_out,EXT_E_out,
	            ALUout,RF_RD2_trans,IR_M_out,PC4_M_out,PC8_M_out,RT_M_out,DMout,
	            IR_W_out,PC8_W_out,ALUout_W_out,DM_W_out;
	 
	 
	 wire[31:0] pc_m;
	 assign pc_m=PC4_M_out-4;
	 
	 IF_module  IF(clk,reset,stall,npc,IR_D_in,PC4_D_in,PC8_D_in);
	 IF_ID_register FDRG(clk,reset,stall,IR_D_in,PC4_D_in,PC8_D_in,IR_D_out,PC4_D_out,PC8_D_out);
	 ID_module  ID(clk,reset,IR_D_out,RegWrite_W,write_register_W_out,Write_data_W,PC4_D_out,PC4_W_out,ForwardRSD,ForwardRTD,ALUout_M_out,RF_RD1,RF_RD2,after_ext,nextpc,pc_sel1,write_register_D);
	 ID_EX_register DERG(clk,reset,stall,IR_D_out,PC4_D_out,PC8_D_out,RF_RD1,RF_RD2,after_ext,write_register_D,IR_E_out,PC4_E_out,PC8_E_out,RS_E_out,RT_E_out,EXT_E_out,write_register_E_out);
	 EX_module  EX(PC8_E_out,IR_E_out,RS_E_out,RT_E_out,EXT_E_out,ForwardRSE,ForwardRTE,ALUout_M_out,Write_data_W,ALUout,RF_RD2_trans,RegWrite_E);
	 EX_MEM_register EMRG(clk,reset,IR_E_out,PC4_E_out,PC8_E_out,ALUout,RF_RD2_trans,write_register_E_out,RegWrite_E,IR_M_out,PC4_M_out,PC8_M_out,ALUout_M_out,RT_M_out,write_register_M_out,RegWrite_M);
	 MEM_module MEM(clk,reset,pc_m,IR_M_out,ALUout_M_out,RT_M_out,ForwardRTM,Write_data_W,DMout);
	 MEM_WB_register MWRG(clk,reset,IR_M_out,PC4_M_out,PC8_M_out,ALUout_M_out,DMout,write_register_M_out,RegWrite_M,IR_W_out,PC4_W_out,PC8_W_out,ALUout_W_out,DM_W_out,write_register_W_out,RegWrite_W);
	 WB_module WB(IR_W_out,ALUout_W_out,DM_W_out,Write_data_W);
	 
    mux2_32 choosePC(PC4_D_in,nextpc,pc_sel1,npc);
	 Hazard_Unit Hazard(IR_D_out,IR_E_out,IR_M_out,RegWrite_M,RegWrite_W,write_register_M_out,write_register_W_out,ForwardRSD,ForwardRTD,ForwardRSE,ForwardRTE,ForwardRTM,stall);
endmodule


