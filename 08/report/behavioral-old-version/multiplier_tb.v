`timescale 1ns / 1ps
`include "multiplier.v"
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:15:51 11/28/2021
// Design Name:   multiplier
// Module Name:   D:/desktop things/uni/TERM 3/Logic Circuits/lab/experiments/08/report/project_8/multiplier_tb.v
// Project Name:  project_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multiplier_tb;

	// Inputs
	reg [1:0] A;
	reg [1:0] B;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	multiplier uut (
		.A(A), 
		.B(B), 
		.y(y)
	);

	initial begin
		// A = 00
		A = 2'b00; B = 2'b00;
		#20;
		
		A = 2'b00; B = 2'b01;
		#20;
		
		A = 2'b00; B = 2'b10;
		#20;
		
		A = 2'b00; B = 2'b11;
		#20;
		
		// A = 01
		A = 2'b01; B = 2'b00;
		#20;
		
		A = 2'b01; B = 2'b01;
		#20;
		
		A = 2'b01; B = 2'b10;
		#20;
		
		A = 2'b01; B = 2'b11;
		#20;
		
		// A = 10 
		A = 2'b10; B = 2'b00;
		#20;
		
		A = 2'b10; B = 2'b01;
		#20;
		
		A = 2'b10; B = 2'b10;
		#20;
		
		A = 2'b10; B = 2'b11;
		#20;
		
		// A = 11
		A = 2'b11; B = 2'b00;
		#20;
		
		A = 2'b11; B = 2'b01;
		#20;
		
		A = 2'b11; B = 2'b10;
		#20;
		
		A = 2'b11; B = 2'b11;
		#20;
		
		$finish;

	end
      
endmodule

