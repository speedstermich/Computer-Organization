`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:59:23 11/23/2018 
// Design Name: 
// Module Name:    fd_register 
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
module fd_register(
	 input clk,
	 input reset,
	 input en,
    input [31:0] IR_Din,
    input [31:0] PC4_Din,
    input [31:0] PC8_Din,
    output reg [31:0] IR_Dout,
    output reg [31:0] PC4_Dout,
    output reg [31:0] PC8_Dout
    );
	 
	always@(posedge clk) begin
	 if(~en)begin
		if(reset) begin
			IR_Dout = 0;
			PC4_Dout = 0;
			PC8_Dout = 0;
		end
		else begin
			IR_Dout = IR_Din;
			PC4_Dout = PC4_Din;
			PC8_Dout = PC8_Din;
		end
	 end
	end

endmodule
