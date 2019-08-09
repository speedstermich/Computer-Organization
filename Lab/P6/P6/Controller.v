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
	output reg[1:0] Extop,
	output reg[3:0] ALUop,
	output reg pc_sel1,    //�Ƿ���ת
	output reg[1:0] pc_sel2,  //������ת��ʽ  00jal 01beq 10jr
	output reg Cal_r,
	output reg Cal_i,
	output reg B,
	output reg Load,
	output reg Save,
	output reg J,
	output reg M,
	output reg[1:0] mf_type,
	output reg[1:0] s_l_op,   //01---sw��lw  10---sh��lh��lhu  11---sb��lb��lbu
	output reg ext_op   //0----0��չ  1----������չ
    );
	 //ALUop:
	 //0000:+   0001:-   0010:|    0011:&   0100:^���    0101�����    0110���߼�����   0111���߼��ɱ�����
	 //1000:�߼�����   1001���߼��ɱ�����   1010����������  1011�������ɱ�����   1100��С����1���з��ţ�   1101��С����1���޷��ţ�
	 initial begin
	   RegDst=2'b00;
	   ALUSrc=0;
	   MemtoReg=0;
	   RegWrite=0;
	   MemWrite=0;
	   Extop=2'b00;
	   ALUop=4'b0000;
		pc_sel1=0;
		pc_sel2=2'b00;
		Cal_r=0;
		Cal_i=0;
		B=0;
		Load=0;
		Save=0;
		J=0;
		M=0;
		mf_type=2'b00;
		s_l_op=2'b00;
		ext_op=0;
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
				 Extop=2'b00;
				 ALUop=4'b0000;
				 pc_sel1=1;
		       pc_sel2=2'b10;
				 Cal_r=0;
		       Cal_i=0;
		       B=1;
		       Load=0;
		       Save=0;
		       J=1;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
			 end
			 else if(func==6'b001001)begin  //jalr
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0000;
				 pc_sel1=1;
		       pc_sel2=2'b10;
				 Cal_r=0;
		       Cal_i=0;
		       B=1;
		       Load=0;
		       Save=0;
		       J=1;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
			 end
			 else if(func==6'b100001)begin   //addu
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
			 end
			 else if(func==6'b100000)begin   //add
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
			 end
			 else if(func==6'b100011)begin   //subu
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0001;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b100010)begin   //sub
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0001;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b100101)begin   //or
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0010;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b100100)begin   //and
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0011;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b100110)begin   //xor
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0100;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b100111)begin   //nor
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0101;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b000000)begin   //sll�߼�����
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0110;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b000100)begin   //sllv�߼��ɱ�����
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0111;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b000010)begin   //srl�߼�����
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b1000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b000110)begin   //srlv�߼��ɱ�����
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b1001;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b000011)begin   //sra��������
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b1010;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b000111)begin   //srav�����ɱ�����
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b1011;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b101010)begin   //slt �з���С����1
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b1100;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b101011)begin   //sltu �޷���С����1
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b1101;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b011000)begin   //mult
			    RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=1;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b011001)begin   //multu
			    RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=1;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b011010)begin   //div
			    RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=1;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b011011)begin   //divu
			    RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=1;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b010000)begin   //mfhi
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=1;
		       mf_type=2'b01;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b010010)begin   //mflo
			    RegDst=2'b01;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=1;
		       mf_type=2'b10;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b010001)begin   //mthi
			    RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=1;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		  else if(func==6'b010011)begin   //mtlo
			    RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=1;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=1;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		    else begin
			    RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
			 end
		 end
	  6'b001101:    //ori
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0010;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=1;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
	  6'b001100:    //andi
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0011;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=1;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		6'b001110:    //xori
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0100;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=1;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
	  6'b001010:    //slti  �з���С����������1
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b01;
				 ALUop=4'b1100;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=1;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		6'b001011:    //sltiu  �޷���С����������1
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b01;
				 ALUop=4'b1101;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=1;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
	  6'b001000:    //addi
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b01;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=1;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
	  6'b001001:    //addiu
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b01;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=1;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
	  6'b100011:   //lw
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=1;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b01;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=1;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b01;
		       ext_op=0;
		  end
		6'b100001:   //lh
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=1;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b01;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=1;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b10;
		       ext_op=1;
		  end
		  6'b100101:   //lhu
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=1;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b01;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=1;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b10;
		       ext_op=0;
		  end
		6'b100000:   //lb
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=1;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b01;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=1;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b11;
		       ext_op=1;
		  end
		  6'b100100:   //lbu
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=1;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b01;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=1;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b11;
		       ext_op=0;
		  end
	  6'b101011:   //sw
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=1;
				 Extop=2'b01;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=1;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b01;
		       ext_op=0;
		  end
		  6'b101001:   //sh
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=1;
				 Extop=2'b01;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=1;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b10;
		       ext_op=0;
		  end
		  6'b101000:   //sb
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=1;
				 Extop=2'b01;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=1;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b11;
		       ext_op=0;
		  end
	  6'b000100:   //beq
	     begin
		       RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 Extop=2'b01;
				 ALUop=4'b0000;
				 pc_sel1=1;
		       pc_sel2=2'b01;
				 Cal_r=0;
		       Cal_i=0;
		       B=1;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
	  6'b000101:   //bne
	     begin
		       RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 Extop=2'b01;
				 ALUop=4'b0000;
				 pc_sel1=1;
		       pc_sel2=2'b01;
				 Cal_r=0;
		       Cal_i=0;
		       B=1;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
	  6'b000110:   //blez
	     begin
		       RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 Extop=2'b01;
				 ALUop=4'b0000;
				 pc_sel1=1;
		       pc_sel2=2'b01;
				 Cal_r=0;
		       Cal_i=0;
		       B=1;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		6'b000111:   //bgtz
	     begin
		       RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 Extop=2'b01;
				 ALUop=4'b0000;
				 pc_sel1=1;
		       pc_sel2=2'b01;
				 Cal_r=0;
		       Cal_i=0;
		       B=1;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
		6'b000001:   //bltz bgez
	     begin
		       RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 Extop=2'b01;
				 ALUop=4'b0000;
				 pc_sel1=1;
		       pc_sel2=2'b01;
				 Cal_r=0;
		       Cal_i=0;
		       B=1;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
	  6'b001111:   //lui
	     begin
		       RegDst=2'b00;
				 ALUSrc=1;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b10;
				 ALUop=4'b0010;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=1;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		 end
	  6'b000011:   //jal
	     begin
		       RegDst=2'b10;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=1;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0000;
				 pc_sel1=1;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=1;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
	6'b000010:   //j
	     begin
		       RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0000;
				 pc_sel1=1;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=1;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
	default:
	     begin
		       RegDst=2'b00;
				 ALUSrc=0;
				 MemtoReg=0;
				 RegWrite=0;
				 MemWrite=0;
				 Extop=2'b00;
				 ALUop=4'b0000;
				 pc_sel1=0;
		       pc_sel2=2'b00;
				 Cal_r=0;
		       Cal_i=0;
		       B=0;
		       Load=0;
		       Save=0;
		       J=0;
				 M=0;
		       mf_type=2'b00;
				 s_l_op=2'b00;
		       ext_op=0;
		  end
	  endcase
		 
	 end


endmodule
