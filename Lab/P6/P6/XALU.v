`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:49 12/14/2018 
// Design Name: 
// Module Name:    XALU 
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
module XALU(
     input clk,
	  input reset,
	  input[31:0] Instr,
     input[31:0] D1,
	  input[31:0] D2,
	  input Start,   //Start�ź������˳�������
	  output reg[31:0] HI,
	  output reg[31:0] LO,
	  output reg Busy
    );
    initial begin
	    HI=32'b0;
		 LO=32'b0;
		 Busy=0;
	 end
	 //MULT�����ų� 000000 011000 (HI,LO)<-GPR[rs]��GPR[rt] 
	 //MULTU���޷��ų�  000000 011001 (HI,LO)<-GPR[rs]��GPR[rt] 
	 //DIV�����ų�  000000 011010 (HI,LO)<-GPR[rs]/GPR[rt] ��
	 //DIVU���޷��ų� 000000 011011 (HI,LO)<-GPR[rs]/GPR[rt] 
	 //MFHI���� HI �Ĵ��� 000000 010000 GPR[rd]<-HI
	 //MFLO���� LO �Ĵ��� 000000 010010 GPR[rd]<-LO 
	 //MTHI��д HI �Ĵ��� 000000 010001 HI<-GPR[rs]
    // MTLO��д LO �Ĵ��� 000000 010011 LO<-GPR[rs]
	  
	  integer state=0;    //�������
		reg[31:0] hi=0;     
		reg[31:0] lo=0;
		reg[31:0] instr;
	 
	 always@(posedge clk)begin
	 #0;//������������ж��� ��ʱ����������������Ҫִ�еĶ�����ִ�������ִ��
	   if(reset)begin
		   HI=32'b0;
		   LO=32'b0;
		   Busy=0;
			state=0;
			hi=0;
			lo=0;
			instr=0;
		end
		else begin
	    case(state)
		   0:begin
			    if(Start)begin
				   case(Instr[5:0])
					  6'b011000:begin   //mult
					     instr=Instr;
					     {hi,lo}=$signed(D1)*$signed(D2);
						  Busy=1;
						  state=1;
					  end
					  6'b011001:begin   //multu
					     instr=Instr;
					     {hi,lo}=D1*D2;
						  Busy=1;
						  state=1;
					  end
					  6'b011010:begin   //div
					      instr=Instr;
					      hi=$signed(D1)%$signed(D2);
							lo=$signed(D1)/$signed(D2);
							Busy=1;
							state=1;
					  end
					  6'b011011:begin   //divu
					      instr=Instr;
					      hi=D1%D2;
							lo=D1/D2;
							Busy=1;
							state=1;
					  end
					  6'b010000:begin   //mfhi
					      HI=hi;
							Busy=0;
							state=0;
					  end
					  6'b010010:begin   //mflo
					      LO=lo;
							Busy=0;
							state=0;
					  end
					  6'b010001:begin   //mthi
					      hi=D1;
							Busy=0;
							state=0;
					  end
					  6'b010011:begin   //mtlo
					      lo=D1;
							Busy=0;
							state=0;
					  end
					endcase
				 end
				 else begin
				   state=0;
					Busy=0;
					instr=0;
				 end
			  end
			1,2,3,4:begin
			     state=state+1;
				  Busy=1;
			  end
			5:begin
			     if(instr[5:0]==6'b011000||instr[5:0]==6'b011001)begin
				     HI=hi;
					  LO=lo;
					  state=0;
					  Busy=0;
					  instr=0;
				  end
				  else begin
				     state=state+1;
					  Busy=1;
				  end
			  end
			6,7,8,9:begin
			     state=state+1;
				  Busy=1;
			  end
			10:begin
			    if(instr[5:0]==6'b011010||instr[5:0]==6'b011011)begin
				     HI=hi;
					  LO=lo;
					  state=0;
					  Busy=0;
					  instr=0;
				  end
				  else begin
				     state=0;
					  Busy=0;
					  instr=0;
				  end
			  end
		endcase
	  end
	 end

endmodule
