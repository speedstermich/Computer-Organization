`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:45:11 12/07/2018 
// Design Name: 
// Module Name:    IF_ID_register 
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
module IF_ID_register(
    input clk,
	 input reset,
	 input en,
	 input[31:0] IR_D_in,
    input[31:0] PC4_D_in,
    input[31:0] PC8_D_in,
    output reg[31:0] IR_D_out,
    output reg[31:0] PC4_D_out,
    output reg [31:0] PC8_D_out
    );
	 
	 initial begin
	        IR_D_out=32'b0;
			  PC4_D_out=32'b0;
			  PC8_D_out=32'b0;
	 end
    always@(posedge clk)begin
	   if(~en)begin
		  if(reset)begin
			  IR_D_out=0;
			  PC4_D_out=0;
			  PC8_D_out=0;
		  end
		  else begin
			  IR_D_out=IR_D_in;
			  PC4_D_out=PC4_D_in;
			  PC8_D_out=PC8_D_in;
		  end
	   end
	 end

endmodule
