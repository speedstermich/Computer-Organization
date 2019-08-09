`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:09:15 11/24/2018 
// Design Name: 
// Module Name:    em_register 
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
module em_register(
    input clk,
    input reset,
    input [31:0] IR_Min,
    input [31:0] PC4_Min,
    input [31:0] AO_Min,
    input [31:0] RT_Min,
	 input [4:0] WA_Min,
	 input RW_Min,
    output reg [31:0] IR_Mout,
    output reg [31:0] PC4_Mout,
    output reg [31:0] AO_Mout,
    output reg [31:0] RT_Mout,
	 output reg [4:0] WA_Mout,
	 output reg RW_Mout
    );
	 
	 always@(posedge clk) begin
		if(reset) begin
			IR_Mout = 0;
			PC4_Mout = 0;
			AO_Mout = 0;
			RT_Mout = 0;
			WA_Mout = 0;
			RW_Mout = 0;
		end
		else begin
			IR_Mout = IR_Min;
			PC4_Mout = PC4_Min;
			AO_Mout = AO_Min;
			RT_Mout = RT_Min;
			WA_Mout = WA_Min;
			RW_Mout = RW_Min;
	 end
	end

endmodule
