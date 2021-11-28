`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:15 11/28/2021 
// Design Name: 
// Module Name:    logic_unit 
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
module logic_unit(A, B, sel, y
    );
	 input [1:0] A;
	 input [1:0] B;
	 input sel;
	 output [3:0] y;
	 reg [3:0] y;
	 
	 always @ (A or B or sel)
	 case (sel)
		1'b0: y = ~(A & B);
		1'b1: y = ~A;
	 endcase


endmodule
