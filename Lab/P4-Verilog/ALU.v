`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:27:30 07/26/2019 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
input [31:0]op1,
input [31:0]op2,
input [3:0]sel,
output [31:0]result,
output zero    
);
	reg [31:0]res;
	 always @(*) begin
	     case(sel)
		      0:res={31'b0,~op1[31]};//>=0
				1:res={31'b0,op1[31]};//<0
				2:res=op1+op2; //add
				3:res=op1-op2; //sub
				4:res=op1&op2; //and
				5:res=op1|op2; //or
				6:res=op1^op2; //异或
				7:res=~(op1|op2); //或非
				8:res=op2>>(op1[4:0]); //右移位运算符
				9:res=($signed(op2))>>>(op1[4:0]); //shift right specified number of bits, fill with value of sign bit if expression is signed, otherwise fill with zero,
				10:res=op2<<(op1[4:0]);	//左移位运算符
				11:res={31'b0,(op1==op2)}; //beq
				12:res={31'b0,($signed(op1))<($signed(op2))}; // 
				13:res={31'b0,op1<op2};
				14:res={31'b0,op1!=0&&(~op1[31])};//>0
				15:res={31'b0,op1==0||op1[31]};//<=0
		  endcase
	 end
	 assign result=res;
	 assign zero=(res==0);

endmodule
