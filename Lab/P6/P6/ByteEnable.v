`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:57:05 12/16/2018 
// Design Name: 
// Module Name:    ByteEnable 
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
module ByteEnable(
    input[1:0] s_l_op,
	 input[31:0] addr,
	 output reg[3:0] BE
    );
    initial begin
	   BE=4'b0000;
	 end

    always@(*)begin
	   case(s_l_op)
		  2'b01:BE=4'b1111;
		  2'b10:begin
		    case(addr[1])
			    1'b0:BE=4'b0011;
				 1'b1:BE=4'b1100;
				 default:BE=4'b0011;
			 endcase
		  end
		  2'b11:begin
		     case(addr[1:0])
			    2'b00:BE=4'b0001;
				 2'b01:BE=4'b0010;
				 2'b10:BE=4'b0100;
				 2'b11:BE=4'b1000;
				 default:BE=4'b0001;
			  endcase
		  end
		  default:BE=4'b0000;
		endcase
	 end
	 
endmodule

