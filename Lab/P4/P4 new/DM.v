`timescale 1ns / 1ns
module Data_Memory(
input clk,
input WE,
input reset,
input [9:0]Addr,
input [31:0]WData,
input [31:0]IAddr,
output [31:0]RData
);
    reg [31:0] ram[0:1023];
	 integer i;
	 initial begin
	     for(i=0;i<=1023;i=i+1) ram[i]=0;
	 end
	 always @(posedge clk ) begin
	     if(reset) for(i=0;i<=1023;i=i+1) ram[i]=0;
		  else if(WE) begin
		      ram[Addr]=WData;
				$display("@%h: *%h <= %h",IAddr, {20'b0,Addr,2'b0},WData);
		  end
	 end
	 assign RData=ram[Addr];
endmodule
