`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:29:33 12/07/2018 
// Design Name: 
// Module Name:    IF_module 
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
module IF_module(
    input clk,
	 input reset,
	 input stall,
    input[31:0] npc,
    output[31:0] Instr,
    output[31:0] pcplus4,
    output[31:0] pcplus8
    );

    wire[31:0] pc;
	 PC PC(clk,reset,stall,npc,pc);
	 IM IM(pc,Instr);
	 ADD ADD4(pc,32'b100,pcplus4);
	 ADD ADD8(pc,32'b1000,pcplus8);
endmodule
