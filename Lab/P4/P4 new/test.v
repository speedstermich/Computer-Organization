`timescale 1ns / 1ns
module test;

	reg clk,reset;
	integer i;
	initial begin
		clk=0;reset=0;i=0;
	end
   always #10 clk=~clk;
	mips cpu(clk,reset);
endmodule

