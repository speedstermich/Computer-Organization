`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:34:28 12/08/2018 
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
    input clk,
    input reset,
	 input[31:0] pc,
	 input[31:0] addr,
    input MemWrite,
    input[31:0] MemData,
    output[31:0] DMout
    );
    
	 reg[31:0] RAM[1023:0];  //RAM
	 integer i;
	 initial begin
	   for(i=0;i<1024;i=i+1)begin
				RAM[i]=0;
		end
	 end
	 
	 assign DMout=RAM[addr[11:2]];
	 
	 always@(posedge clk)begin
	
		if(reset)begin
			for(i=0;i<1024;i=i+1)
				RAM[i]=0;
		end
		else if(MemWrite)begin
			RAM[addr[11:2]]=MemData;
			$display("%d@%h: *%h <= %h",$time,pc,addr,RAM[addr[11:2]]);
		end
		end

endmodule