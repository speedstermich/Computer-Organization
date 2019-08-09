`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:19:13 12/08/2018 
// Design Name: 
// Module Name:    EX_MEM_register 
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
module EX_MEM_register(
    input clk,
    input reset,
    input[31:0] IR_M_in,
    input[31:0] PC4_M_in,
	 input[31:0] PC8_M_in,
    input[31:0] ALUout_M_in,
    input[31:0] RT_M_in,
	 input[4:0] write_register_M_in,
	 input RegWrite_M_in,
    output reg[31:0] IR_M_out,
    output reg[31:0] PC4_M_out,
	 output reg[31:0] PC8_M_out,
    output reg[31:0] ALUout_M_out,
    output reg[31:0] RT_M_out,
	 output reg[4:0] write_register_M_out,
	 output reg RegWrite_M_out
    );
     initial begin
	        IR_M_out=0;
			  PC4_M_out=0;
			  PC8_M_out=0;
			  ALUout_M_out=0;
			  RT_M_out=0;
			  write_register_M_out=0;
			  RegWrite_M_out=0;
	  end
     always@(posedge clk)begin
		  if(reset)begin
			  IR_M_out=0;
			  PC4_M_out=0;
			  PC8_M_out=0;
			  ALUout_M_out=0;
			  RT_M_out=0;
			  write_register_M_out=0;
			  RegWrite_M_out=0;
		  end
		  else begin
			  IR_M_out=IR_M_in;
			  PC4_M_out=PC4_M_in;
			  PC8_M_out=PC8_M_in;
			  ALUout_M_out=ALUout_M_in;
			  RT_M_out=RT_M_in;
			  write_register_M_out=write_register_M_in;
			  RegWrite_M_out=RegWrite_M_in;
	     end
	  end
endmodule
