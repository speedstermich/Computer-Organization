`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:06:12 11/16/2018 
// Design Name: 
// Module Name:    im 
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
module im(
    input [9:0] a,
    output [31:0] rd
    );
	 
	reg [31:0] ROM[1023:0];
	
	initial begin
		$readmemh("code.txt", ROM);
		//$display("%h", ROM[a]);
	end
	 

	assign rd = ROM[a];
	



endmodule
