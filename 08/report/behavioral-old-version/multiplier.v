`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:54:38 11/28/2021 
// Design Name: 
// Module Name:    multiplier 
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
module multiplier(A, B, y
    );
	 input [1:0] A;
	 input [1:0] B;
	 output [3:0] y;
	 
	 wire [1:0] w0;
	 wire [2:0] w1;
	 
	 // multiply the first digit of A
	 assign w0[0] = A[0] & B[0];
	 assign w0[1] = A[0] & B[1];
	 
	 // multiply the second digit of A
	 assign w1[0] = 1'b0;
	 assign w1[1] = A[1] & B[0];
	 assign w1[2] = A[1] & B[1];
	 
	 // the sum of the two prev multiplications is the final result
	 assign y[2:0] = w1 + w0;
	 assign y[3] = w0[1] & w1[1];


endmodule
