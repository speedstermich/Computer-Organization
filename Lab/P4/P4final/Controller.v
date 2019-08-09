`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:44:06 11/17/2018 
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
	output reg[1:0] RegDst=0,
	output reg ALUSrc=0,
	output reg[1:0] MemtoReg=0,
	output reg RegWrite=0,
	output reg MemWrite=0,
	output reg[1:0] PCSrc=0,
	output reg[1:0] Extop=0,
	output reg[1:0] ALUop=0,
	output reg jr=0,
	output reg beq=0
    );
	 always@(*)begin
	   case(op)
		6'b000000:
		  begin
		    if(func==6'b001000)begin     //jr
			    RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=2'b00;
				 RegWrite=0;
				 MemWrite=0;
				 PCSrc=2'b00;
				 Extop=2'b00;
				 ALUop=2'b00;
				 jr=1;
				 beq=0;
			 end
			 else if(func==6'b100001)begin   //addu
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=2'b00;
				 RegWrite=1;
				 MemWrite=0;
				 PCSrc=2'b00;
				 Extop=2'b00;
				 ALUop=2'b00;
				 jr=0;
				 beq=0;
			 end
			 else if(func==6'b100011)begin   //subu
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=2'b00;
				 RegWrite=1;
				 MemWrite=0;
				 PCSrc=2'b00;
				 Extop=2'b00;
				 ALUop=2'b01;
				 jr=0;
				 beq=0;
		  end
		    else begin
			     RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=2'b00;
				 RegWrite=0;
				 MemWrite=0;
				 PCSrc=2'b00;
				 Extop=2'b00;
				 ALUop=2'b00;
				 jr=0;
				 beq=0;
			 end
		 end
	  6'b001101:    //ori
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=2'b00;
				 RegWrite=1;
				 MemWrite=0;
				 PCSrc=2'b00;
				 Extop=2'b00;
				 ALUop=2'b10;
				 jr=0;
				 beq=0;
		  end
	  6'b100011:   //lw
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=2'b01;
				 RegWrite=1;
				 MemWrite=0;
				 PCSrc=2'b00;
				 Extop=2'b01;
				 ALUop=2'b00;
				 jr=0; 
				 beq=0;
		  end
	  6'b101011:   //sw
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=2'b00;
				 RegWrite=0;
				 MemWrite=1;
				 PCSrc=2'b00;
				 Extop=2'b01;
				 ALUop=2'b00;
				 jr=0; 
				 beq=0;
		  end
	  6'b000100:   //beq
	     begin
		       RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=2'b00;
				 RegWrite=0;
				 MemWrite=0;
				 PCSrc=2'b01;
				 Extop=2'b01;
				 ALUop=2'b01;
				 jr=0; 
				 beq=1;
		  end
	  6'b001111:   //lui
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=2'b00;
				 RegWrite=1;
				 MemWrite=0;
				 PCSrc=2'b00;
				 Extop=2'b10;
				 ALUop=2'b10;
				 jr=0; 
				 beq=0;
		  end
	  6'b000011:   //jal
	     begin
		       RegDst=2'b10;
				 ALUSrc=0;
				 MemtoReg=2'b10;
				 RegWrite=1;
				 MemWrite=0;
				 PCSrc=2'b10;
				 Extop=2'b00;
				 ALUop=2'b00;
				 jr=0; 
				 beq=0;
		  end
	default:
	     begin
		      RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=2'b00;
				 RegWrite=0;
				 MemWrite=0;
				 PCSrc=2'b00;
				 Extop=2'b00;
				 ALUop=2'b00;
				 jr=0;  
				 beq=0;
		  end
	  endcase
		 
	 end


endmodule
