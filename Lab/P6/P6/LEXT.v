`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:02:32 12/17/2018 
// Design Name: 
// Module Name:    LEXT 
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
module LEXT(
    input[31:0] DMout,
    input[3:0] BE,
	 input ext_op,
	 output reg[31:0] ext_out=0
    );
	 
	 always@(*)begin
	   case(BE)
		  4'b1111:ext_out=DMout;
		  4'b0011:begin
		            if(ext_op==0)begin
						   ext_out=DMout;
						end
						else begin
						   ext_out={{16{DMout[15]}},DMout[15:0]};
						end
		          end
		  4'b1100:begin
		            if(ext_op==0)begin
						   ext_out=DMout;
						end
						else begin
						   ext_out={{16{DMout[15]}},DMout[15:0]};
						end
		          end
		  4'b0001:begin
		            if(ext_op==0)begin
						   ext_out=DMout;
						end
						else begin
						   ext_out={{24{DMout[7]}},DMout[7:0]};
						end
		          end
		  4'b0010:begin
		            if(ext_op==0)begin
						   ext_out=DMout;
						end
						else begin
						   ext_out={{24{DMout[7]}},DMout[7:0]};
						end
		          end
		  4'b0100:begin
		            if(ext_op==0)begin
						   ext_out=DMout;
						end
						else begin
						   ext_out={{24{DMout[7]}},DMout[7:0]};
						end
		          end
		  4'b1000:begin
		            if(ext_op==0)begin
						   ext_out=DMout;
						end
						else begin
						   ext_out={{24{DMout[7]}},DMout[7:0]};
						end
		          end
		  default:ext_out=DMout;
		  
		endcase
	 end


endmodule
