`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:43 11/17/2018 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input[31:0] pc,
    input[31:0] addr,
	 input clk,
	 input reset,
	 input MemWrite,
	 input[31:0] MemData,
	 output[31:0] out
    );
	 wire[9:0] MemAddr;
	 reg[31:0] dm[1023:0];    //RAM
	 
	 assign MemAddr[9:0]=addr[11:2];
	 assign out=dm[MemAddr];
	 
	 integer i;
	 initial begin
	   for(i=0;i<1024;i=i+1)begin
		  dm[i]=0;
		end
	 end
	 
	 always@(posedge clk)begin
	 if(reset)begin
	   for(i=0;i<1024;i=i+1)begin
		  dm[i] =0;
		end
	 end
	   else begin
		  if(MemWrite)begin
		    dm[MemAddr] =MemData;
			 $display("@%h: *%h <= %h",pc,addr,MemData);
		  end
		end
	 end


endmodule
