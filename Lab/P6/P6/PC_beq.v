`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:16:09 12/07/2018 
// Design Name: 
// Module Name:    PC_beq 
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
module PC_b(
   input[31:0] Instr,
   input[31:0] after_ext,
	input[31:0] PC4_D,
	input equal,
	input g_or_e,
	input greater,
	output reg[31:0] pc_beq
    );
	//beq000100   bne000101   
	//blez000110  00000   bgtz00111 00000 bltz000001 00000  bgez000001 00001
	   always@(*)begin
		  if((equal&&Instr[31:26]==6'b000100)||(~equal&&Instr[31:26]==6'b000101)||(~greater&&Instr[31:26]==6'b000110)||(greater&&Instr[31:26]==6'b000111)||(~g_or_e&&Instr[31:26]==6'b000001&&Instr[20:16]==5'b00000)||(g_or_e&&Instr[31:26]==6'b000001&&Instr[20:16]==5'b00001))begin
          pc_beq=PC4_D+(after_ext<<2);
		  end
		  else begin
		    pc_beq=PC4_D+4;
		  end
	  end
		 
endmodule
