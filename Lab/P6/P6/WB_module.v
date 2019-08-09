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
     input[3:0] BE,
     input[31:0] Instr,
	  input[31:0] ALUout_W,
	  input[31:0] DMout,   //ReadDataW
	  output[31:0] writeback_data
    );

   wire MemtoReg;
	wire[31:0] ext_out;
   Controller Controller_W(.func(Instr[5:0]),.op(Instr[31:26]),.MemtoReg(MemtoReg),.ext_op(ext_op));
	LEXT LEXT(DMout,BE,ext_op,ext_out);
	mux2_32 DATAtoREG(ALUout_W,ext_out,MemtoReg,writeback_data);
endmodule
