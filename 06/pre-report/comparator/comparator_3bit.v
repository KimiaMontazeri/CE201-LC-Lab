`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:02:29 11/14/2021 
// Design Name: 
// Module Name:    comparator_3bit 
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
module comparator_3bit(a0, a1, a2, b0, b1, b2, L, E, G, lt, eq, gt);
	input a0, a1, a2, b0, b1, b2, L, E, G;
	output lt, eq, gt;

	wire a0_not, a1_not, a2_not, b0_not, b1_not, b2_not;
	wire x0, x1, x2, w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11;
	
	not 
	g0(a0_not, a0),
	g1(a1_not, a1),
	g2(a2_not, a2),
	g3(b0_not, b0),
	g4(b1_not, b1),
	g5(b2_not, b2);
	
	xnor 
	g6(x0, a0, b0),
	g7(x1, a1, b1),
	g8(x2, a2, b2);
	
	and 
	g9(w0, x0, x1, x2),
	g10(w1, a0, b0_not, x1, x2),
	g11(w2, a1, b1_not, x2),
	g12(w3, a2, b2_not),
	g13(w4, a0_not, b0, x1, x2),
	g14(w5, a1_not, b1, x2),
	g15(w6, a2_not, b2);
	
	and
	g16(eq, w0, E), 
	g17(w8, w0, G),
	g18(w9, w0, L);
	
	or
	g19(w10, w1, w2, w3),
	g20(w11, w4, w5, w6);
	
	or
	g21(gt, w10, w8),
	g22(lt, w11, w9);
	


endmodule
