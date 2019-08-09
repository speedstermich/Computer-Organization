`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:41:37 07/22/2019 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
input clk,
input WEnable,
input reset,
input [4:0]RAddr1,
input [4:0]RAddr2,
input [4:0]WAddr,
input [31:0]WData,
input [31:0]IAddr,
output [31:0]RData1,
output [31:0]RData2
);
    reg [31:0] regs[0:31]; 
	 integer i;
    initial begin
	     for(i=0;i<=31;i=i+1) regs[i]=0;
		  regs[28]=32'h00001800;
		  regs[29]=32'h00000ffc;
	 end
	 always @(posedge clk) begin
	     if(reset) begin
		      for(i=0;i<=31;i=i+1) regs[i]<=0;
				regs[28]<=32'h00001800;
				regs[29]<=32'h00000ffc;
				//regs[28]=32'h00001800;
				//regs[29]=32'h00000ffc;
		  end
		  else if(WEnable&&WAddr>0) begin
		      regs[WAddr]<=WData;
				$display("@%h: $%d <= %h", IAddr, WAddr,WData);
		  end
	 end
	 assign RData1=regs[RAddr1];
	 assign RData2=regs[RAddr2];
endmodule
