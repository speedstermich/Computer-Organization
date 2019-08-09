`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:56 10/11/2018 
// Design Name: 
// Module Name:    regfile 
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

 module regfile(
	 input clk,
    input reset,
	 input [31:0] pc,
    input we3,
    input [4:0] ra1,
    input [4:0] ra2,
    input [4:0] wa3,
    input [31:0] wd3,
    output [31:0] rd1,
    output [31:0] rd2
    );

	reg [31:0]rf[31:0];
	integer i;
		
	
	always@(posedge clk) begin
	#0;
		if(reset)
			for(i = 0; i < 32; i = i + 1)
				rf[i]=0;
		else if(we3) begin
			if(wa3!=5'b00000) begin
				rf[wa3] = wd3;
				$display("%d@%h: $%d <= %h", $time, pc, wa3, rf[wa3]);
			end
		end
	end
	
	assign rd1 = (ra1 != 0) ? rf [ra1] : 0;
	assign rd2 = (ra2 != 0) ? rf [ra2] : 0;
		
endmodule 
