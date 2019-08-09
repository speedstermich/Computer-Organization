`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:40:03 12/09/2018 
// Design Name: 
// Module Name:    WB_module 
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
module WB_module(
     input[31:0] Instr,
	  input[31:0] ALUout_W,
	  input[31:0] DMout,   //ReadDataW
	  output[31:0] writeback_data
    );

   wire MemtoReg;
   Controller Controller_W(.func(Instr[5:0]),.op(Instr[31:26]),.MemtoReg(MemtoReg));
	mux2_32 DATAtoREG(ALUout_W,DMout,MemtoReg,writeback_data);
endmodule
