`timescale 1ns / 1ps
`include "dff.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:31:30 12/19/2021 
// Design Name: 
// Module Name:    register_4bit 
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
module register(D, CLK, RST, en, Q);
	 input [3:0] D;
	 input CLK, RST, en;
	 output wire [3:0] Q;
	 wire QP0, QP1, QP2, QP3;
	 reg D0, D1, D2, D3;
	 
	 dff df0(Q[0], QP0, CLK, D0, RST); 
	 dff df1(Q[1], QP1, CLK, D1, RST); 
	 dff df2(Q[2], QP2, CLK, D2, RST); 
	 dff df3(Q[3], QP3, CLK, D3, RST); 
	 
	 always @(posedge CLK)
		if (CLK & en)
			begin
				D0 = D[0];
				D1 = D[1];
				D2 = D[2];
				D3 = D[3];
			end
endmodule
