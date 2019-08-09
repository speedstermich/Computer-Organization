`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:51:30 12/07/2018 
// Design Name: 
// Module Name:    CMP 
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
module CMP(
    input[31:0] D1,
	 input[31:0] D2,
	 output equal,   //equal----判断相等
	 output g_or_e,   //g_or_e-----大于等于
	 output greater    //greater大于
    );
	 assign equal=(D1==D2)?1'b1:1'b0;
	 assign g_or_e=($signed(D1)>=0)?1'b1:1'b0;
	 assign greater=($signed(D1)>0)?1'b1:1'b0;
endmodule
