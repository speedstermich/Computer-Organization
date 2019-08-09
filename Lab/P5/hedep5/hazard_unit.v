`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:33:58 11/24/2018 
// Design Name: 
// Module Name:    hazard_unit 
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
module hazard_unit(
	 input [31:0] IR_Dout,
	 input [31:0] IR_Eout,
	 input [31:0] IR_Mout,
	 input RWM,
	 input RWW,
	 input [4:0] WA_Mout,
	 input [4:0] WA_Wout,
	 output reg [1:0] ForwardRSD,
	 output reg [1:0] ForwardRTD,
	 output reg [1:0] ForwardRSE,
	 output reg [1:0] ForwardRTE,
	 output reg ForwardRTM,
	 output reg stall
    );
	 
	 wire bd, rd, id, ld, sd, be, re, ie, le, se, bm, rm, im, lm, sm;
	 wire stall_br, stall_bi, stall_bl1, stall_bl2, stall_rl, stall_il, stall_ll, stall_sl;
	 
	 always@(*) begin
	 //#0;
		if(RWM && (IR_Dout[25:21] == WA_Mout) && (WA_Mout != 0)) begin
		//$display("%d", $time);
			ForwardRSD = 2'b01;
		end
		else if(RWW && (IR_Dout[25:21] == WA_Wout) && (WA_Wout != 0) && ~(RWM && (IR_Dout[25:21] == WA_Mout) && (WA_Mout != 0))) begin
			//$display("a0");
			ForwardRSD = 2'b10;
		end
		else begin
			ForwardRSD = 2'b00;
		end
		
		if(RWM && (IR_Dout[20:16] == WA_Mout) && (WA_Mout != 0)) begin
			//$display("a1");
			ForwardRTD = 2'b01;
		end
		else if(RWW && (IR_Dout[20:16] == WA_Wout) && (WA_Wout != 0) && ~(RWM && (IR_Dout[20:16] == WA_Mout) && (WA_Mout != 0))) begin
			ForwardRTD = 2'b10;
		end
		else begin
			ForwardRTD = 2'b00;
		end

		if(RWM && (IR_Eout[25:21] == WA_Mout) && (WA_Mout != 0)) begin
			ForwardRSE = 2'b01;
		end
		else if(RWW && (IR_Eout[25:21] == WA_Wout) && (WA_Wout != 0) && ~(RWM && (IR_Eout[25:21] == WA_Mout) && (WA_Mout != 0))) begin
			ForwardRSE = 2'b10;
		end
		else begin
			ForwardRSE = 2'b00;
		end
		
		if(RWM && (IR_Eout[20:16] == WA_Mout) && (WA_Mout != 0)) begin
			ForwardRTE = 2'b01;
		end
		else if(RWW && (IR_Eout[20:16] == WA_Wout) && (WA_Wout != 0) && ~(RWM && (IR_Eout[20:16] == WA_Mout) && (WA_Mout != 0))) begin
			ForwardRTE = 2'b10;
		end
		else begin
			ForwardRTE = 2'b00;
		end
		
		if(RWW && (IR_Mout[20:16] == WA_Wout) &&(WA_Wout != 0)) begin
			ForwardRTM = 1'b1;
		end
		else begin
			ForwardRTM = 1'b0;
		end
	 end
	 
	 controller ID(.op(IR_Dout[31:26]), .func(IR_Dout[5:0]), .b(bd), .r(rd), .i(id), .l(ld), .s(sd));
	 controller DE(.op(IR_Eout[31:26]), .func(IR_Eout[5:0]), .b(be), .r(re), .i(ie), .l(le), .s(se));
	 controller EM(.op(IR_Mout[31:26]), .func(IR_Mout[5:0]), .b(bm), .r(rm), .i(im), .l(lm), .s(sm));

	 assign stall_br = (bd && re && ((IR_Dout[25:21] == IR_Eout[15:11]) | (IR_Dout[20:16] == IR_Eout[15:11])));
	 assign stall_bi = (bd && ie && ((IR_Dout[25:21] == IR_Eout[20:16]) | (IR_Dout[20:16] == IR_Eout[20:16])));
	 assign stall_bl1 = (bd && le && ((IR_Dout[25:21] == IR_Eout[20:16]) | (IR_Dout[20:16] == IR_Eout[20:16])));
	 assign stall_bl2 = (bd && lm && ((IR_Dout[25:21] == IR_Mout[20:16]) | (IR_Dout[20:16] == IR_Mout[20:16])));
	 assign stall_rl = (rd && le && ((IR_Dout[25:21] == IR_Eout[20:16]) | (IR_Dout[20:16] == IR_Eout[20:16])));
	 assign stall_il = (id && le && (IR_Dout[25:21] == IR_Eout[20:16]));
	 assign stall_ll = (ld && le && (IR_Dout[25:21] == IR_Eout[20:16]));
	 assign stall_sl = (sd && le && (IR_Dout[25:21] == IR_Eout[20:16]));
	 
	 /*always @(*)begin
		
		stall_ll =  ((IR_Dout[31:26] == 6'b100011) & (IR_Eout[31:26] == 6'b100011)  & (IR_Dout[25:21] == IR_Eout[20:16]));
	 end*/
	 always @(*)begin
		#0;
		//$display("%d %d %d %d %d %d %d %d", stall_br, stall_bi, stall_bl1, stall_bl2, stall_rl, stall_il, stall_ll, stall_sl);
		/*if(stall_ll)
			$display("%d %h, %h", $time, IR_Dout, IR_Eout);*/
		stall = stall_br | stall_bi | stall_bl1 | stall_bl2 | stall_rl | stall_il | stall_ll | stall_sl;
		/*if(stall)
			$display("%d", $time);*/
	 end

endmodule
