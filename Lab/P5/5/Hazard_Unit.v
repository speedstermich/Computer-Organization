`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:58:47 12/09/2018 
// Design Name: 
// Module Name:    Hazard_Unit 
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
module Hazard_Unit(
    input[31:0] IR_D_out,
	 input[31:0] IR_E_out,
	 input[31:0] IR_M_out,
	 input RegWrite_M,
	 input RegWrite_W,
	 input[4:0] write_register_M_out,
	 input[4:0] write_register_W_out,
	 output reg[1:0] ForwardRSD,
	 output reg[1:0] ForwardRTD,
	 output reg[1:0] ForwardRSE,
	 output reg[1:0] ForwardRTE,
	 output reg ForwardRTM,
	 output reg stall
    );
     
	  wire Cal_r_D,Cal_i_D,B_D,Load_D,Save_D,Cal_r_E,Cal_i_E,B_E,Load_E,Save_E,Cal_r_M,Cal_i_M,B_M,Load_M,Save_M;
	  wire stall_B_Calr,stall_B_Cali,stall_B_Load1,stall_B_Load2,stall_Calr_Load,stall_Cali_Load,stall_Load_Load,stall_Save_Load;
	
	
	  always@(*)begin
	    //D��
	     if((RegWrite_M==1)&&(IR_D_out[25:21]==write_register_M_out)&&(write_register_M_out!=0))begin
			    ForwardRSD=2'b01;    //��ǰD��rs�Ĵ��� ��ս���M��д�Ĵ�����ͬ ��M����ALUout_Mת����D��
		  end
		  else if((RegWrite_W==1)&&(IR_D_out[25:21]==write_register_W_out)&&(write_register_W_out!=0)&&~((RegWrite_M==1)&&(IR_D_out[25:21]==write_register_M_out)&&(write_register_M_out!=0)))begin
			    ForwardRSD=2'b10;  //��ǰD��rs�Ĵ��� ��ս���W��д�Ĵ�����ͬ�Ҳ������M����д�Ĵ�����ͬ ��W����Write_data_Wת����D��
		  end
		  else begin
			    ForwardRSD=2'b00;  //����Ҫ����ת��		  
		  end
		  
		  if((RegWrite_M==1)&&(IR_D_out[20:16]==write_register_M_out)&&(write_register_M_out!=0))begin
			    ForwardRTD=2'b01;    //��ǰD��rt�Ĵ��� ��ս���M��д�Ĵ�����ͬ ��M����ALUout_Mת����D��
		  end
		  else if((RegWrite_W==1)&&(IR_D_out[20:16]==write_register_W_out)&&(write_register_W_out!=0)&&~((RegWrite_M==1)&&(IR_D_out[20:16]==write_register_M_out)&&(write_register_M_out!=0)))begin
			    ForwardRTD=2'b10;  //��ǰD��rt�Ĵ��� ��ս���W��д�Ĵ�����ͬ�Ҳ������M����д�Ĵ�����ͬ ��W����Write_data_Wת����D��
		  end
		  else begin
			    ForwardRTD=2'b00;  //����Ҫ����ת��		  
		  end
		 //E��  
	     if((RegWrite_M==1)&&(IR_E_out[25:21]==write_register_M_out)&&(write_register_M_out!=0))begin
			    ForwardRSE=2'b01;    //��ǰE��rs�Ĵ��� ��ս���M��д�Ĵ�����ͬ ��M����ALUout_Mת����E��
		  end
		  else if((RegWrite_W==1)&&(IR_E_out[25:21]==write_register_W_out)&&(write_register_W_out!=0)&&~((RegWrite_M==1)&&(IR_E_out[25:21]==write_register_M_out)&&(write_register_M_out!=0)))begin
			    ForwardRSE=2'b10;  //��ǰE��rs�Ĵ��� ��ս���W��д�Ĵ�����ͬ�Ҳ������M����д�Ĵ�����ͬ ��W����Write_data_Wת����E��
		  end
		  else begin
			    ForwardRSE=2'b00;  //����Ҫ����ת��		  
		  end
		  
		  if((RegWrite_M==1)&&(IR_E_out[20:16]==write_register_M_out)&&(write_register_M_out!=0))begin
			    ForwardRTE=2'b01;    //��ǰE��rt�Ĵ��� ��ս���M��д�Ĵ�����ͬ ��M����ALUout_Mת����E��
		  end
		  else if((RegWrite_W==1)&&(IR_E_out[20:16]==write_register_W_out)&&(write_register_W_out!=0)&&~((RegWrite_M==1)&&(IR_E_out[20:16]==write_register_M_out)&&(write_register_M_out!=0)))begin
			    ForwardRTE=2'b10;  //��ǰD��rt�Ĵ��� ��ս���W��д�Ĵ�����ͬ�Ҳ������M����д�Ĵ�����ͬ ��W����Write_data_Wת����E��
		  end
		  else begin
			    ForwardRTE=2'b00;  //����Ҫ����ת��		  
		  end
		 //M��
		  if((RegWrite_W==1)&&(IR_M_out[20:16]==write_register_W_out)&&(write_register_W_out!=0))begin
			    ForwardRTM=1'b1;   //��ǰM��rt�Ĵ��� ��ս���W��д�Ĵ�����ͬ ��W����Write_data_Wת����M��
		  end
		  else begin
			    ForwardRTM=1'b0;   //����Ҫ����ת��
		  end 
	  end
	 
	  Controller D_con(.func(IR_D_out[5:0]),.op(IR_D_out[31:26]),.Cal_r(Cal_r_D),.Cal_i(Cal_i_D),.B(B_D),.Load(Load_D),.Save(Save_D));
	  Controller E_con(.func(IR_E_out[5:0]),.op(IR_E_out[31:26]),.Cal_r(Cal_r_E),.Cal_i(Cal_i_E),.B(B_E),.Load(Load_E),.Save(Save_E));
	  Controller M_con(.func(IR_M_out[5:0]),.op(IR_M_out[31:26]),.Cal_r(Cal_r_M),.Cal_i(Cal_i_M),.B(B_M),.Load(Load_M),.Save(Save_M));
     
	 assign stall_B_Calr=(B_D&&Cal_r_E&&((IR_D_out[25:21]==IR_E_out[15:11])|(IR_D_out[20:16]==IR_E_out[15:11])));
	 assign stall_B_Cali=(B_D&&Cal_i_E&&((IR_D_out[25:21]==IR_E_out[20:16])|(IR_D_out[20:16]==IR_E_out[20:16])));
	 assign stall_B_Load1=(B_D&&Load_E&&((IR_D_out[25:21]==IR_E_out[20:16])|(IR_D_out[20:16]==IR_E_out[20:16])));
	 assign stall_B_Load2=(B_D&&Load_M&&((IR_D_out[25:21]==IR_M_out[20:16])|(IR_D_out[20:16]==IR_M_out[20:16])));
	 assign stall_Calr_Load=(Cal_r_D&&Load_E&&((IR_D_out[25:21]==IR_E_out[20:16])|(IR_D_out[20:16]==IR_E_out[20:16])));
	 assign stall_Cali_Load=(Cal_i_D&&Load_E&&(IR_D_out[25:21]==IR_E_out[20:16]));
	 assign stall_Load_Load =(Load_D&&Load_E&&(IR_D_out[25:21]==IR_E_out[20:16]));
	 assign stall_Save_Load =(Save_D&&Load_E&&(IR_D_out[25:21]==IR_E_out[20:16]));
	 
	 always@(*)begin
	 #0;
	    stall=stall_B_Calr|stall_B_Cali|stall_B_Load1|stall_B_Load2|stall_Calr_Load|stall_Cali_Load|stall_Load_Load|stall_Save_Load;
	 end
	 
	  
endmodule

