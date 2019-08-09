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
module PC_beq(
   input[31:0] after_ext,
	input[31:0] PC4_D,
	input equal,
	output reg[31:0] pc_beq
    );
	   always@(*)begin
		  if(equal)begin
          pc_beq=PC4_D+(after_ext<<2);
		  end
		  else begin
		    pc_beq=PC4_D+4;
		  end
	  end
		 
endmodule
