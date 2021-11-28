`timescale 1ns / 1ps
`include "multiplier.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:43:34 11/28/2021 
// Design Name: 
// Module Name:    alu 
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
module alu(A, B, sel, y
    );
	 input [1:0] A;
	 input [1:0] B;
	 input [1:0] sel;
	 output [3:0] y;
	 reg [3:0] y;
	 wire [3:0] multiply_res;
	 
	 multiplier m(A, B, multiply_res);
	 
	 
	 always @ (A or B or multiply_res or sel)
		case (sel)
			2'b00: begin 
						y[1:0] = ~A; 
						y[3:2] = 2'b00; 
					 end
			2'b01: begin 
						y[1:0] = ~(A & B); 
						y[3:2] = 2'b00;
					 end
			2'b10: y = A + B;
			2'b11: y = multiply_res;
		endcase

endmodule
