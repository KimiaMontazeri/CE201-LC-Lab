`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AUT-LC-LAB
// Engineer: 
// 
// Create Date:    18:54:42 10/31/2021 
// Design Name: 
// Module Name:    xnor_circuit 
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
module xnor_circuit(
	input a,
	input b,
	input c,
	output f
);
	 //input a,b,c;
	 //output f;
	 wire w1, w2, w3, w4, w5, w6, w7;
	 not  g1(w1,a);
	 not  g2(w2,b);
	 not  g3(w3,c);
	 and  g4(w4,w1,w2,w3);
	 and  g5(w5,w1,b,c);
	 and  g6(w6,a,w2,c);
	 and  g7(w7,a,b,w3);
	 or   g8(f,w4,w5,w6,w7);


endmodule
