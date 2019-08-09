`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:08:41 12/07/2018 
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
	  input stall,
	  input[31:0] npc,
	  output reg[31:0] pc
    );
    initial begin
	   pc=32'h3000;
	 end
    always@(posedge clk)begin
	    if(~stall)begin
		    if(reset)begin
			   pc=32'h3000;
			 end
		    else begin
			   pc=npc;
	       end	
		 end
	end
endmodule
