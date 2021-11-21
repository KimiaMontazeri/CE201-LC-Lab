`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:14 11/21/2021 
// Design Name: 
// Module Name:    adder_sub_1bit 
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
module adder_sub_1bit(a, b, sel, Cin, sum, Cout);
	 
	 input a, b, sel, Cin;
	 output sum, Cout;
	 wire x, y, w0, w1, w2, w3;
	 
	 assign x = a;
	 
	 xor #(10) g0(y, b, sel);
	 xor #(10) g1(w0, x, y);
	 xor #(10) g2(sum, Cin, w0);
	 
	 and #(5) g3(w1, y, Cin);
	 and #(5) g4(w2, x, y);
	 and #(5) g5(w3, x, Cin);
	 
	 or #(5) g6(Cout, w1, w2, w3);

endmodule
