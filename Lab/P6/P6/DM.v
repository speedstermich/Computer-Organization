`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:34:28 12/08/2018 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input clk,
    input reset,
	 input[31:0] pc,
	 input[31:0] addr,
    input MemWrite,
    input[31:0] MemData,
	 input[3:0] BE,
    output reg[31:0] DMout
    );
    
	 reg[31:0] RAM[4095:0];  //RAM
	 integer i;
	 initial begin
	   for(i=0;i<4096;i=i+1)begin
				RAM[i]=0;
		end
	 end
	  always@(posedge clk)begin
		if(reset)begin
			for(i=0;i<4096;i=i+1)
				RAM[i]=0;
		end
		else if(MemWrite)begin            //存数据
			case(BE)
			  4'b1111:RAM[addr[13:2]]=MemData;
			  4'b0011:RAM[addr[13:2]][15:0]=MemData[15:0];
			  4'b1100:RAM[addr[13:2]][31:16]=MemData[15:0];
			  4'b0001:RAM[addr[13:2]][7:0]=MemData[7:0];
			  4'b0010:RAM[addr[13:2]][15:8]=MemData[7:0];
			  4'b0100:RAM[addr[13:2]][23:16]=MemData[7:0];
			  4'b1000:RAM[addr[13:2]][31:24]=MemData[7:0];
			  default:RAM[addr[13:2]]=MemData;
			endcase
			$display("%d@%h: *%h <= %h",$time,pc,{addr[31:2],2'b00},RAM[addr[13:2]]);
		end
		end


     always@(*)begin                //取数据
	     case(BE)
			  4'b1111:DMout=RAM[addr[13:2]];
			  4'b0011:DMout={16'b0,RAM[addr[13:2]][15:0]};
			  4'b1100:DMout={16'b0,RAM[addr[13:2]][31:16]}; 
			  4'b0001:DMout={24'b0,RAM[addr[13:2]][7:0]};
			  4'b0010:DMout={24'b0,RAM[addr[13:2]][15:8]};
			  4'b0100:DMout={24'b0,RAM[addr[13:2]][23:16]};
			  4'b1000:DMout={24'b0,RAM[addr[13:2]][31:24]};
			  default:DMout=RAM[addr[13:2]];
			endcase
	  end
endmodule
