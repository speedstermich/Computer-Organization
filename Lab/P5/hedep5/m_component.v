`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:21 11/24/2018 
// Design Name: 
// Module Name:    m_component 
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
module m_component(
    input clk,
    input reset,
	 input [31:0] pc4_m,
    input [31:0] instr,
    input [31:0] ALUResult,
    input [31:0] writedata,
	 input ForwardRTM,
	 input [31:0] wd,
    output [31:0] readdata
    );
	 
	 wire MemWrite;
	 wire [31:0] writedatac;
	 
	 controller m_ctr(.op(instr[31:26]), .func(instr[5:0]), .MemWrite(MemWrite));
	 dm DM(clk, reset, pc4_m, MemWrite, ALUResult, writedatac, readdata);
	 
	 mux2_32 MFRTM(writedata, wd, ForwardRTM, writedatac);

endmodule
