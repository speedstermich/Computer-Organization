`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:37:49 07/26/2019
// Design Name:   mips
// Module Name:   H:/GitHub/Computer-Organization/Lab/P4/test/test.v
// Project Name:  test
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

module test;
reg clk,reset;
initial begin
clk=0;reset=0;
end
always #10 clk=~clk;
mips cpu(clk,reset);
endmodule
      

