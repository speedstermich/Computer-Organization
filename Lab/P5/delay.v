`timescale 1ns / 1ps

`define opcode 31:26
`define func 	5:0
`define rs 		25:21
`define rt 		20:16
`define rd 		15:11
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:06:03 07/29/2019 
// Design Name: 
// Module Name:    delay 
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
module delay(
	 input [31:0] ir_d,
	 input [31:0] ir_e,
	 input [31:0] ir_m,
	 output delay
	 );
	 
parameter 	addu_f = 6'b100001,
			subu_f = 6'b100011,
			ori    = 6'b001101,
			lw     = 6'b100011,
			sw     = 6'b101011,
			beq    = 6'b000100,
			lui    = 6'b001111,
			jal    = 6'b000011,
			j      = 6'b000010,
			jr_f   = 6'b001000,
			nop    = 6'b000000;

wire b_D, jr_D, cal_r_D, cal_i_D, load_D, save_D;
wire cal_r_E, cal_i_E, load_E, save_E;
wire load_M;

wire [4:0] rs_d, rt_d;
wire [4:0] rs_e, rt_e, rd_e;
wire [4:0] rs_m, rt_m, rd_m;

wire stall_b_r, stall_b_i, stall_b_load, stall_b_loadM;
wire stall_cal_r_load, stall_cal_i_load;
wire stall_load_load, stall_save_load;
wire stall_jr_r, stall_jr_i, stall_jr_load, stall_jr_loadM;

assign rs_d = ir_d[`rs];
assign rt_d = ir_d[`rt];

assign rs_e = ir_e[`rs];
assign rt_e = ir_e[`rt];
assign rd_e = ir_e[`rd];

assign rs_m = ir_m[`rs];
assign rt_m = ir_m[`rt];
assign rd_m = ir_m[`rd];

assign b_D        = (ir_d[`opcode] == beq);
assign jr_D     	= (ir_d[`opcode] == nop)	& (ir_d[`func]		== jr_f);
assign cal_r_D 	= (ir_d[`opcode] == nop)	& (ir_d[`func]		!= jr_f);
assign cal_i_D 	= (ir_d[`opcode] == ori)	| (ir_d[`opcode]	== lui);
assign load_D    	= (ir_d[`opcode] == lw);
assign save_D 		= (ir_d[`opcode] == sw);

assign cal_r_E 	= (ir_e[`opcode] == nop)	& (ir_e[`func]		!= jr_f);
assign cal_i_E 	= (ir_e[`opcode] == ori)	| (ir_e[`opcode]	== lui);
assign load_E    	= (ir_e[`opcode] == lw);
assign save_E 		= (ir_e[`opcode] == sw);

assign load_M    	= (ir_m[`opcode] == lw);

assign stall_b_r			= b_D & cal_r_E & ((rs_d == rd_e) | (rt_d == rd_e));
assign stall_b_i			= b_D & cal_i_E & ((rs_d == rt_e) | (rt_d == rt_e));
assign stall_b_load		= b_D & load_E  & ((rs_d == rt_e) | (rt_d == rt_e));
assign stall_b_loadM		= b_D & load_M  & ((rs_d == rt_m) | (rt_d == rt_m));

assign stall_cal_r_load = cal_r_D & load_E & ((rs_d == rt_e) | (rt_d == rt_e));
assign stall_cal_i_load = cal_i_D & load_E & (rs_d == rt_e);

assign stall_load_load	= load_D  & load_E & (rs_d == rt_e);
assign stall_save_load 	= save_D & load_E & (rs_d == rt_e);

assign stall_jr_r			= jr_D & cal_r_E & (rs_d == rd_e);
assign stall_jr_i       = jr_D & cal_i_E & (rs_d == rt_e);
assign stall_jr_load		= jr_D & load_E  & (rs_d == rt_e);
assign stall_jr_loadM	= jr_D & load_M  & (rs_d == rt_m);

assign delay = stall_b_r 			| stall_b_i 			| stall_b_load 		| stall_b_loadM 		|
					stall_cal_r_load 	| stall_cal_i_load 	| stall_load_load 	| stall_save_load 	|
					stall_jr_r 			| stall_jr_i 			| stall_jr_load 		| stall_jr_loadM;

endmodule