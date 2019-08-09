`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:21 11/17/2018 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
     input[31:0] WPC,
     input clk,
	  input reset,
	  input RegWrite,
	  input[4:0] Read_register1,
	  input[4:0] Read_register2,
	  input[4:0] Write_register,
	  input[31:0] Write_data,
	  output[31:0] Read_data1,
	  output[31:0] Read_data2
    );
	 reg[31:0] register[31:0];   //32registers
	 assign Read_data1=register[Read_register1];
	 assign Read_data2=register[Read_register2];
	 
	 integer i;
	 initial begin
	   for(i=0;i<32;i=i+1)begin     //initial registers-----0
		  register[i]=0;
		end
	 end
	 
	 always@(posedge clk)begin
	   if(reset)begin       //reset=1 复位
		   for(i=0;i<32;i=i+1)begin
			  register[i]=0;
			end
		end
		
		else if(RegWrite&&Write_register!=0)begin   //写入信号有效且写入的寄存器不为$0
		   register[Write_register] <=Write_data;
			$display("@%h: $%d <= %h",WPC,Write_register,Write_data);
		end
	 end


endmodule
