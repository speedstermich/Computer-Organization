`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:36 11/16/2018 
// Design Name: 
// Module Name:    PCflopr 
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
module PCflopr(
    input clk,
    input reset,
	 input stall,
    input [31:0] a,
    output reg [31:0] y
    );
	 initial begin
	   y=32'h3000;
	 end
	always@(posedge clk) begin
	 if(~stall) begin
		if(reset)
			y = 32'h3000;
		else
			y = a;
	 end	
	end


endmodule
