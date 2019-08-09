`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:28:59 07/26/2019
// Design Name:   mips
// Module Name:   H:/GitHub/Computer-Organization/Lab/P4/Single/testbench.v
// Project Name:  Single
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
	reg clk,reset;
initial begin
clk=0;reset=0;
end
always #10 clk=~clk;
mips cpu(clk,reset);
      
endmodule

