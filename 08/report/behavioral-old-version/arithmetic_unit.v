`timescale 1ns / 1ps
`include "multiplier.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:22:02 11/28/2021 
// Design Name: 
// Module Name:    arithmetic_unit 
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
module arithmetic_unit(A, B, sel, y
    );
	 input [1:0] A;
	 input [1:0] B;
	 input sel;
	 output [3:0] y;
	 reg [3:0] y;
	 wire [3:0] multiply_res;
	 
	 
	 multiplier m(A, B, multiply_res);
	 
	 always @ (A or B or multiply_res or sel)
	 case (sel)
		1'b0: y = multiply_res;
		1'b1: y = A + B;
	 endcase 


endmodule
