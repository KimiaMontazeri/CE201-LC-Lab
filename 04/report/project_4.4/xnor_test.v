`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:56:49 10/31/2021
// Design Name:   xnor_circuit
// Module Name:   D:/desktop things/uni/TERM 3/Logic Circuits/lab/experiments/04/report/project_4.4/xnor_test.v
// Project Name:  project_4.4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: xnor_circuit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module xnor_test;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire f;

	// Instantiate the Unit Under Test (UUT)
	xnor_circuit uut (a,b,c,f);

	initial begin
		// Initialize Inputs
		a = 0; b = 0; c = 0;
		
		#100 a = 0; b = 0; c = 1;
		
		#100 a = 0; b = 1; c = 0;
		
		#100 a = 0; b = 1; c = 1;
		
		#100 a = 1; b = 0; c = 0;
		
		#100 a = 1; b = 0; c = 1;
		
		#100 a = 1; b = 1; c = 0;
		
		#100 a = 1; b = 1; c = 1;

	end
      
endmodule

