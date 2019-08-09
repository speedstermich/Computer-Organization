`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:25:02 12/07/2018 
// Design Name: 
// Module Name:    PC_jal 
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
module PC_jal(
   input[31:0] Instr,
	input[31:0] PC4_D,
	output[31:0] pc_jal
    );
   assign pc_jal={PC4_D[31:28],Instr[25:0],2'b00};
endmodule
