`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:05 11/17/2018 
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
module IM(
      input[31:0] addr,
		output [5:0] op,
		output [5:0] func,
		output [4:0] rs,
		output [4:0] rt,
		output [4:0] rd,
		output [15:0] imm,
		output [25:0] imm26
    );
	  
	   wire[9:0] address;
		reg[31:0] im[1023:0];   //ROM
		integer i;
		assign address[9:0]=addr[11:2];
      initial begin
			for(i=0;i<1024;i=i+1) im[i]=0;
			$readmemh("code.txt",im);   //Ö¸Áî·ÅÈëim
	   end
		
		 assign op[5:0]=im[address][31:26];
		 assign func[5:0]=im[address][5:0];
		 assign rs[4:0]=im[address][25:21];
		 assign rt[4:0]=im[address][20:16];
		 assign rd[4:0]=im[address][15:11];
		 assign imm[15:0]=im[address][15:0];
		 assign imm26[25:0]=im[address][25:0];
		

endmodule
