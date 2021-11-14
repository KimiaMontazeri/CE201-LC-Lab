`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:28:26 11/14/2021
// Design Name:   comparator_3bit
// Module Name:   D:/desktop things/uni/TERM 3/Logic Circuits/lab/experiments/06/report/project_6.1/comparator_3bit_tb.v
// Project Name:  project_6.1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator_3bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator_3bit_tb;

	// Inputs
	reg [2:0] A;
	reg [2:0] B;
	reg L;
	reg E;
	reg G;

	// Outputs
	wire lt;
	wire eq;
	wire gt;

	// Instantiate the Unit Under Test (UUT)
	comparator_3bit uut (
		.a0(A[0]), 
		.a1(A[1]), 
		.a2(A[2]), 
		.b0(B[0]), 
		.b1(B[1]), 
		.b2(B[2]), 
		.L(L), 
		.E(E), 
		.G(G), 
		.lt(lt), 
		.eq(eq), 
		.gt(gt)
	);

	initial begin
		
		A = 3'b000;
		B = 3'b001;
		E = 0; G = 0; L = 0;
		#50;
		E = 0; G = 0; L = 1;
		#50;
		E = 0; G = 1; L = 0;
		#50;
		E = 1; G = 0; L = 0;
		#50;
		
		A = 3'b001;
		B = 3'b001;
		E = 0; G = 0; L = 0;
		#50;
		E = 0; G = 0; L = 1;
		#50;
		E = 0; G = 1; L = 0;
		#50;
		E = 1; G = 0; L = 0;
		#50;
		
		
		A = 3'b011;
		B = 3'b001;
		E = 0; G = 0; L = 0;
		#50;
		E = 0; G = 0; L = 1;
		#50;
		E = 0; G = 1; L = 0;
		#50;
		E = 0; G = 1; L = 1;
		#50;
		E = 1; G = 0; L = 0;
		#50;
	
		#50;
		$finish;

	end
      
endmodule

