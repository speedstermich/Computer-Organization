`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:26:21 11/24/2018 
// Design Name: 
// Module Name:    mw_register 
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
module mw_register(
    input clk,
    input reset,
    input [31:0] IR_Win,
    input [31:0] PC4_Win,
    input [31:0] AO_Win,
    input [31:0] DR_Win,
	 input [4:0] WA_Win,
	 input RW_Win,
    output reg [31:0] IR_Wout,
    output reg [31:0] PC4_Wout,
    output reg [31:0] AO_Wout,
    output reg [31:0] DR_Wout,
	 output reg [4:0] WA_Wout,
	 output reg RW_Wout
    );

	 always@(posedge clk) begin
		if(reset) begin
			IR_Wout = 0;
			PC4_Wout = 0;
			AO_Wout = 0;
			DR_Wout = 0;
			WA_Wout = 0;
			RW_Wout = 0;
		end
		else begin
			IR_Wout = IR_Win;
			PC4_Wout = PC4_Win;
			AO_Wout = AO_Win;
			DR_Wout = DR_Win;
			WA_Wout = WA_Win;
			RW_Wout = RW_Win;
	 end
	end
endmodule
