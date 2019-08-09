`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:07:45 12/08/2018 
// Design Name: 
// Module Name:    ID_EX_register 
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
module ID_EX_register(
    input clk,
	 input reset,
	 input stall,
    input[31:0] IR_E_in,
    input[31:0] PC4_E_in,
    input[31:0] PC8_E_in,
    input[31:0] RS_E_trans_in,
    input[31:0] RT_E_trans_in,
    input[31:0] EXT_E_in,
	 input[4:0] write_register_E_in,
	 input Start_E_in,
    output reg[31:0] IR_E_out,
    output reg[31:0] PC4_E_out,
    output reg[31:0] PC8_E_out,
    output reg[31:0] RS_E_trans_out,
    output reg[31:0] RT_E_trans_out,
    output reg[31:0] EXT_E_out,
	 output reg[4:0] write_register_E_out,
	 output reg Start_E_out
    );
	 
	 initial begin
	        IR_E_out= 0;
			  PC4_E_out=0;
			  PC8_E_out=0;
			  RS_E_trans_out=0;
			  RT_E_trans_out=0;
			  EXT_E_out=0;
			  write_register_E_out=0;
			  Start_E_out=0;
	 end
     always@(posedge clk)begin
		  if(reset||stall)begin
			  IR_E_out= 0;
			  PC4_E_out=0;
			  PC8_E_out=0;
			  RS_E_trans_out=0;
			  RT_E_trans_out=0;
			  EXT_E_out=0;
			  write_register_E_out=0;
			  Start_E_out=0;
		  end
		  else begin
			  IR_E_out=IR_E_in;
			  PC4_E_out=PC4_E_in;
			  PC8_E_out=PC8_E_in;
			  RS_E_trans_out=RS_E_trans_in;
			  RT_E_trans_out=RT_E_trans_in;
			  EXT_E_out=EXT_E_in;
			  write_register_E_out=write_register_E_in;
			  Start_E_out=Start_E_in;
	     end
	  end
endmodule
