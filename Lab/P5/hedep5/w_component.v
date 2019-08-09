`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:57:06 11/24/2018 
// Design Name: 
// Module Name:    w_component 
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
module w_component(
    input [31:0] instr,
    input [31:0] ALUResult,
    input [31:0] readdata,
    //output [4:0] wa,
    output [31:0] wd
    );
	 
	 wire [1:0] RegDst;
    wire	 MemtoReg;
	 
	 controller w_ctr(.op(instr[31:26]), .func(instr[5:0]), .MemtoReg(MemtoReg));
	// mux4_5 MUX_GPRwa(.d0(instr[20:16]), .d1(instr[15:11]), .d2(5'b11111), .s(RegDst), .dout(wa));
	 mux2_32 MUX_GPRwd(ALUResult, readdata, MemtoReg, wd);


endmodule
