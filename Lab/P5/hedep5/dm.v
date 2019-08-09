`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:48:03 11/16/2018 
// Design Name: 
// Module Name:    dm 
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
module dm(
    input clk,
    input reset,
	 input [31:0] pc,
    input we,
    input [31:0] a,
    input [31:0] din,
    output [31:0] dout
    );
	 
	 reg [31:0] RAM [1023:0];
	 integer i;
	 
	 assign dout = RAM[a[11:2]];
	 
	 always@(posedge clk)begin
	 #0;
		if(reset) begin
			for(i=0;i<1024;i=i+1)
				RAM[i]=0;
		end
		else if(we) begin
			RAM[a[11:2]] = din;
			$display("%d@%h: *%h <= %h", $time, pc, a, RAM[a[11:2]]);
		end
		end
endmodule
