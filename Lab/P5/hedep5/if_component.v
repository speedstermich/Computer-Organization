`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:27:43 11/23/2018 
// Design Name: 
// Module Name:    if_component 
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
module if_component(
	 input clk,
	 input reset,
	 input stall,
    input [31:0] pcnext,
    output [31:0] instr,
    output [31:0] pcplus4,
    output [31:0] pcplus8
    );
	 
	 wire [31:0] pc;
	 wire [31:0] pcNext;
	 
	 PCflopr PC(clk, reset, stall, pcnext, pc);
	 im IM(pc[11:2], instr);
	 add ADD4(pc, 32'b100, pcplus4);
	 assign pcplus8 = pcplus4 + 4;
	 

endmodule
