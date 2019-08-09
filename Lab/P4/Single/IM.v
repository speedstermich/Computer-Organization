`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:42:48 07/22/2019 
// Design Name: 
// Module Name:    IM 
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
module Instr_Memory(
input [9:0]RAddr,
output [31:0]RData
);
    reg [31:0] rom[0:1023];
	 integer i;
	 initial begin
	     //for(i=0;i<1024;i=i+1) //rom[i]=0;
		  $readmemh("code.txt",rom);
	 end
	 assign RData=rom[RAddr];
endmodule
