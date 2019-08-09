`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:35:40 11/18/2018 
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
     input[31:0] NPC,
	  input clk,
	  input reset,
	  output reg[31:0] PC
    );
	 initial begin
	    PC=32'h00003000;
	 end
	 
	 always@(posedge clk)begin
	    if(reset)begin
		    PC <=32'h00003000;
		 end
		 else begin
		    PC <=NPC;
		 end
	 end


endmodule
