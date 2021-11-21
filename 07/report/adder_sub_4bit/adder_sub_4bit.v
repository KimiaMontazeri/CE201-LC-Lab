`timescale 1ns / 1ps
`include "adder_sub_1bit.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:11:50 11/21/2021 
// Design Name: 
// Module Name:    adder_sub_4bit 
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
module adder_sub_4bit(
	 input [3:0] A, 
	 input [3:0] B, 
	 input sel, // 0 +, 1 - 
	 output [3:0] S, 
	 output Cout
);	 

	 wire Cin0, Cin1, Cin2, Cin3;
	 
	 assign Cin0 = sel;
	 
	 adder_sub_1bit asb0(A[0], B[0], sel, Cin0, S[0], Cin1);
	 adder_sub_1bit asb1(A[1], B[1], sel, Cin1, S[1], Cin2);
	 adder_sub_1bit asb2(A[2], B[2], sel, Cin2, S[2], Cin3);
	 adder_sub_1bit asb3(A[3], B[3], sel, Cin3, S[3], Cout);
	 

endmodule
