`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:39:37 12/07/2018 
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
    input clk,
    input reset,
	 input[31:0] pc,  //pc_w  pc4_w-4
    input RegWrite_W,   //pc_w
    input[4:0] Read_register1,  //对应当前pc
	 input[4:0] Read_register2,  //对应当前pc
	 input[4:0] Write_register_W,   //对应pc_w
	 input[31:0] Write_data_W,     //对应pc_w
	 output[31:0] Read_data1,    //对应当前pc
	 output[31:0] Read_data2     //对应当前pc
    );
    
	 reg[31:0] register[31:0];
	 integer i;
	 initial begin
	   for(i=0;i<32;i=i+1)begin
				register[i]=0;
			end
	 end
		
	always@(posedge clk)begin
		if(reset)begin
			for(i=0;i<32;i=i+1)begin
				register[i]=0;
			end
		end
		else if(RegWrite_W&&Write_register_W!=0)begin
				register[Write_register_W]=Write_data_W;
				$display("%d@%h: $%d <= %h",$time,pc,Write_register_W,register[Write_register_W]);
		end
	end
	
	assign Read_data1=(Read_register1!=0)?register[Read_register1]:0;
	assign Read_data2=(Read_register2!=0)?register[Read_register2]:0;

endmodule
