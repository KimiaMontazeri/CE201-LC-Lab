`timescale 1ns / 1ps
`include "./multiplexer4x4.v"
`include "./half_adder.v"
module alu(input [1:0] A, input [1:0] B, input [1:0] sel , output [3:0] Y);
	 wire [3:0] w0;
	 wire [3:0] w1;
	 wire [3:0] w2;
	 wire [3:0] w3;
	 
	 wire x1,x2,x3;
	 
	 //NOT
	assign w0[3:2] =  2'b00;
	assign w0[1:0] = ~A;
	 
	 //NAND
	 assign w1[1:0]= ~(A&B) ;
	 assign w1[2]=0;
	 assign w1[3]=0;
	 
	 //ADD
	 assign w2[2:0]= A+B ;
	 assign w2[3]=0;
	 
	 //MULTIPIY
	assign w3[0] = A[0] & B[0];
	assign x0 = A[0] & B[1];
	assign x1 = A[1] & B[0];
	assign x2 = A[1] & B[1];
	 
	half_adder h1(x0,x1,w3[1],x3);
	half_adder h2(x3,x2,w3[2],w3[3]);
	 
	// create the result
	 multiplexer4x4 m0 (w3, w2, w1, w0, sel, Y);
endmodule
