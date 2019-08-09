`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:40:16 12/08/2018 
// Design Name: 
// Module Name:    mux2_32 
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
module mux2_32(
    input[31:0] D1,
	 input[31:0] D2,
	 input control,
	 output[31:0] out
    );
   assign out=control?D2:D1;
	

endmodule
