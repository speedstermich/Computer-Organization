`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:44:01 07/22/2019 
// Design Name: 
// Module Name:    PC 
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
module PC(
input clk,
input reset,
input [31:0]next,
output reg [31:0]IAddr=32'h00003000
);
    always @(posedge clk) begin
	     if(reset) IAddr<=32'h00003000;
		  else IAddr<=next;
	 end
endmodule
