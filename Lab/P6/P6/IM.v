`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:22 12/07/2018 
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
    input[31:0] pc,
	 output [31:0] Instr
    );
	 
	reg[31:0] ROM[4095:0];   //ROM
	wire[31:0] address;
	assign address=pc-32'h3000;
   initial begin
		$readmemh("code.txt",ROM);
	end
	
	    assign  Instr=ROM[address[13:2]];
	
endmodule
