`timescale 1ns / 1ps
`include "dff.v"
//////////////////////////////////////////////////////////////////////////////////
// 
// Create Date:    13:30:51 12/12/2021 
// Module Name:    seq_circuit_delay 
//
//////////////////////////////////////////////////////////////////////////////////
module seq_circuit_delay (
	input RST ,
	input CLK ,
	input A ,
	input B ,
	output Y ,
	output Z ,
	output temp,
	output R,
	output S);

		wire A1,A2,A3,A4;
		assign #10 S = B & A3;
		assign #10 A1 = A | S;
		assign #10 A2 = ~(A1 | A4);
		
		wire A1_delay;
		assign #5 A1_delay = A1;
		
	   dff df1(Y,A4,CLK,A1_delay,RST),
			 df2(temp,A3,CLK,A2,RST);
		assign #10 R = B & A3;
		assign #10 Z = A4 | R;
		
		
endmodule
