`timescale 1ns / 1ps
`include "dff.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:24:06 12/12/2021 
// Design Name: 
// Module Name:    seq_circuit_no_delay 
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
module seq_circuit_no_delay(
	input RST ,
	input CLK ,
	input A ,
	input B ,
	output Y,
	output Z,
	output X,
	output R,
	output S);
	
	wire A1,A2,A3,A4;
	assign S = B & A3;
	assign A1 = A | S;
	assign A2 = ~(A1 | A4);
		
	dff df1(Y,A4,CLK,A1,RST),
		 df2(X,A3,CLK,A2,RST);
	assign R = B & A3;
	assign Z = A4 | R;

endmodule
