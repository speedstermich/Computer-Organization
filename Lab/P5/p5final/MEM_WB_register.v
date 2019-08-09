`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:58:07 12/08/2018 
// Design Name: 
// Module Name:    MEM_WB_register 
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
module MEM_WB_register(
    input clk,
    input reset,
    input[31:0] IR_W_in,
    input[31:0] PC4_W_in,
	 input[31:0] PC8_W_in,
    input[31:0] ALUout_W_in,
    input[31:0] DM_W_in,
	 input[4:0] write_register_W_in,
	 input RegWrite_W_in,
    output reg[31:0] IR_W_out,
    output reg[31:0] PC4_W_out,
	 output reg[31:0] PC8_W_out,
    output reg[31:0] ALUout_W_out,
    output reg[31:0] DM_W_out,
	 output reg[4:0] write_register_W_out,
	 output reg RegWrite_W_out
    );
	 
	 initial begin
	        IR_W_out=0;
			  PC4_W_out=0;
			  PC8_W_out=0;
			  ALUout_W_out=0;
			  DM_W_out=0;
			  write_register_W_out=0;
			  RegWrite_W_out=0;
	 end
    always@(posedge clk)begin
		  if(reset)begin
			  IR_W_out=0;
			  PC4_W_out=0;
			  PC8_W_out=0;
			  ALUout_W_out=0;
			  DM_W_out=0;
			  write_register_W_out=0;
			  RegWrite_W_out=0;
		  end
		  else begin
			  IR_W_out=IR_W_in;
			  PC4_W_out=PC4_W_in;
			  PC8_W_out=PC8_W_in;
			  ALUout_W_out=ALUout_W_in;
			  DM_W_out = DM_W_in;
			  write_register_W_out=write_register_W_in;
			  RegWrite_W_out=RegWrite_W_in;
	     end
	 end

endmodule
