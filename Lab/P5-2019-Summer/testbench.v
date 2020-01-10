`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:35:20 07/31/2019
// Design Name:   mips
// Module Name:   H:/GitHub/Computer-Organization/Lab/P5/P5-2019/testbench.v
// Project Name:  P5-2019
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg clk;
	reg reset;
	
	mips cpu(clk,reset);
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		//reset = 1'b1;
		end	
	always #5 clk = ~clk;
	
endmodule

