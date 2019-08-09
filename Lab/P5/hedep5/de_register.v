`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:03:56 11/24/2018 
// Design Name: 
// Module Name:    de_register 
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
module de_register(
	 input clk,
	 input reset,
	 input clear,
    input [31:0] IR_Ein,
    input [31:0] PC4_Ein,
    input [31:0] PC8_Ein,
    input [31:0] RS_Ein,
    input [31:0] RT_Ein,
    input [31:0] EXT_Ein,
	 input [4:0] WA_Ein,
    output reg [31:0] IR_Eout,
    output reg [31:0] PC4_Eout,
    output reg [31:0] PC8_Eout,
    output reg [31:0] RS_Eout,
    output reg [31:0] RT_Eout,
    output reg [31:0] EXT_Eout,
	 output reg [4:0] WA_Eout
    );
	 
	 always@(posedge clk) begin
		if(reset | clear) begin
			IR_Eout = 0;
			PC4_Eout = 0;
			PC8_Eout = 0;
			RS_Eout = 0;
			RT_Eout = 0;
			EXT_Eout = 0;
			WA_Eout = 0;
		end
		else begin
			IR_Eout = IR_Ein;
			PC4_Eout = PC4_Ein;
			PC8_Eout = PC8_Ein;
			RS_Eout = RS_Ein;
			RT_Eout = RT_Ein;
			EXT_Eout = EXT_Ein;
			WA_Eout = WA_Ein;
	 end
	end

endmodule
