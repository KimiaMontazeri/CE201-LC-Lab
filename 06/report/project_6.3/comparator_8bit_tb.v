`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:57:16 11/14/2021
// Design Name:   comparator_8bit
// Module Name:   D:/desktop things/uni/TERM 3/Logic Circuits/lab/experiments/06/report/project_6.3/comparator_8bit_tb.v
// Project Name:  project_6.3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator_8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator_8bit_tb;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg l;
	reg e;
	reg g;

	// Outputs
	wire lt;
	wire eq;
	wire gt;

	// Instantiate the Unit Under Test (UUT)
	comparator_8bit uut (
		.a0(A[0]), 
		.a1(A[1]), 
		.a2(A[2]), 
		.a3(A[3]), 
		.a4(A[4]), 
		.a5(A[5]), 
		.a6(A[6]), 
		.a7(A[7]), 
		.b0(B[0]), 
		.b1(B[1]), 
		.b2(B[2]), 
		.b3(B[3]), 
		.b4(B[4]), 
		.b5(B[5]), 
		.b6(B[6]), 
		.b7(B[7]), 
		.l(l), 
		.e(e), 
		.g(g), 
		.lt(lt), 
		.eq(eq), 
		.gt(gt)
	);

	initial begin
		// Initialize Inputs
		A = 8'b00000001;
		B = 8'b00000001;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 50 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 50 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 50 ;
		
		
		A = 8'b00000010;
		B = 8'b00000001;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 50 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 50 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 50;
		
		
		A = 8'b00100000;
		B = 8'b01000000;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 50 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 50 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 50;
		$finish;
		
        
		

	end
      
endmodule

