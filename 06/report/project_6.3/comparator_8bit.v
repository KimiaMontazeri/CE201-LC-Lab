`timescale 1ns / 1ps
`include "comparator_3bit.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:20 11/14/2021 
// Design Name: 
// Module Name:    comparator_8bit 
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
module comparator_8bit(a0, a1, a2, a3, a4, a5, a6, a7, b0, b1, b2, b3, b4, b5, b6, b7, l, e, g, lt, eq, gt);
	input a0, a1, a2, a3, a4, a5, a6, a7, b0, b1, b2, b3, b4, b5, b6, b7, l, e, g;
	output lt, eq, gt;
	wire w, left_lt, left_eq, left_gt, middle_lt, middle_eq, middle_gt;
	assign w = 0;
	
	comparator_3bit right(a0, a1, a2, b0, b1, b2, l, e, g, left_lt, left_eq, left_gt);
	comparator_3bit middle(a3, a4, a5, b3, b4, b5, left_lt, left_eq, left_gt, middle_lt, middle_eq, middle_gt);
	comparator_3bit left(w, a7, a6, w, b7, b6, middle_lt, middle_eq, middle_gt, lt, eq, gt);


endmodule
