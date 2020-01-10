`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:08:41 12/07/2018 
// Design Name: 
// Module Name:    Controller 
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
module Controller(
   input[5:0] func,
	input[5:0] op,
	output reg[1:0] RegDst,
	output reg ALUSrc,
	output reg MemtoReg,
	output reg RegWrite,
	output reg MemWrite,
	output reg branch,   //beq
	output reg[1:0] Extop,
	output reg[1:0] ALUop,
	output reg pc_sel1,    //是否跳转
	output reg[1:0] pc_sel2,  //哪种跳转方式  00jal 01beq 10jr
	output reg Cal_r,
	output reg Cal_i,
	output reg B,
	output reg Load,
	output reg Save,
	output reg J
    );
	 
	 initial begin
	   RegDst=2'b00;
	   ALUSrc=0;
	   MemtoReg=0;
	   RegWrite=0;
	   MemWrite=0;
	   branch=0;
	   Extop=2'b00;
	   ALUop=2'b00;
		pc_sel1=0;
		pc_sel2=2'b00;
		Cal_r=0;
		Cal_i=0;
		B=0;
		Load=0;
		Save=0;
		J=0;
	 end
	 
    always@(*)begin
	   case(op)
		6'b000000:
		  begin
		    if(func==6'b001000)begin     //jr
			    RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 branch=0;
				 Extop=2'b00;
				 ALUop=2'b00;
				 pc_sel1=1;
		       pc_sel2=2'b10;
				 Cal_r=0;
		       Cal_i=0;
		       B=1;
		       Load=0;
		       Save=0;
		       J=1;
			 end
			 else if(func==6'b100001)begin   //addu
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 branch=0;
				 Extop=2'b00;
				 ALUop=2'b00;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
			 end
			 else if(func==6'b100011)begin   //subu
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 branch=0;
				 Extop=2'b00;
				 ALUop=2'b01;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
		  end
		    else begin
			    RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 branch=0;
				 Extop=2'b00;
				 ALUop=2'b00;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
			 end
		 end
	  6'b001101:    //ori
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 branch=0;
				 Extop=2'b00;
				 ALUop=2'b10;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=1;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
		  end
	  6'b100011:   //lw
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=1;
				 RegWrite=1;
				 MemWrite=0;
				 branch=0;
				 Extop=2'b01;
				 ALUop=2'b00;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=1;
		       Save=0;
		       J=0;
		  end
	  6'b101011:   //sw
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=1;
				 branch=0;
				 Extop=2'b01;
				 ALUop=2'b00;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=1;
		       J=0;
		  end
	  6'b000100:   //beq
	     begin
		       RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 branch=1;
				 Extop=2'b01;
				 ALUop=2'b01;
				 pc_sel1=1;
		       pc_sel2=2'b01;
				 Cal_r=0;
		       Cal_i=0;
		       B=1;
		       Load=0;
		       Save=0;
		       J=0;
		  end
	  6'b001111:   //lui
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 branch=0;
				 Extop=2'b10;
				 ALUop=2'b10;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=1;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
		 end
	  6'b000011:   //jal
	     begin
		       RegDst=2'b10;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 branch=0;
				 Extop=2'b00;
				 ALUop=2'b00;
				 pc_sel1=1;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=1;
		  end
	6'b000010:   //j
	     begin
		       RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 branch=0;
				 Extop=2'b00;
				 ALUop=2'b00;
				 pc_sel1=1;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=1;
		  end
	default:
	     begin
		      RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 branch=0;
				 Extop=2'b00;
				 ALUop=2'b00;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
		  end
	  endcase
		 
	 end


endmodule
