`timescale 1ns / 1ns
module ALU(
input [31:0]op1,
input [31:0]op2,
input [3:0]sel,
output [31:0]result
//output zero
);
    reg [31:0]res;
	 reg [7:0]temp, temp2;
	 integer i;
	 always @(*) begin
			temp <= 32;
			temp2 <= 32;
			//clz
			for(i = 31; i>=0; i = i-1) begin
				if(op1[i] == 1) begin
					temp <= 31-i;
					i = -1; //break
				end
			end
			//clo
			for(i=31; i >= 0; i = 1-i)	begin
				if(op1[i] == 0) begin
					temp2 <= 31-i;
					i = -1; //break
				end
			end
	
	     case(sel)
		      0:res={31'b0,~op1[31]};//>=0
				1:res={31'b0,op1[31]};//<0
				2:res=op1+op2; //add
				3:res=op1-op2; //sub
				4:res=op1&op2; //and
				5:res=op1|op2; //or
				6:res=op1^op2; //异或
				7:res=~(op1|op2);//或非
				8:res=op2>>(op1[4:0]);//右移位运算符
				//9:res = {op1[0],op1[1],op1[2],op1[3],op1[4],op1[5],op1[6],op1[7],op1[8],op1[9],op1[10],op1[11],op1[12],op1[13],op1[14],op1[15]
				//			,op1[16],op1[17],op1[18],op1[19],op1[20],op1[21],op1[22],op1[23],op1[24],op1[25],op1[26],op1[27],op1[28],op1[29],op1[30],op1[31]}; //rev
				//9:res=($signed(op2))>>>(op1[4:0]); //shift right specified number of bits, fill with value of sign bit if expression is signed, otherwise fill with zero,
				9:res = temp; //clz
				10:res=op2<<(op1[4:0]); //左移位运算符
				11:res={31'b0,(op1==op2)};  //beq
				12:res={31'b0,($signed(op1))<($signed(op2))};
				13:res={31'b0,op1<op2};
				14:res={31'b0,op1!=0&&(~op1[31])};//>0
				15:res={31'b0,op1==0||op1[31]};//<=0
		  endcase
		end
	 assign result=res;
	 //assign zero=(res==0);
endmodule
