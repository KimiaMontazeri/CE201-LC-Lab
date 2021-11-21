`timescale 1ns / 1ps
`include "adder_sub_1bit.v"

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:10:41 11/21/2021
// Design Name:   adder_sub_1bit
// Module Name:   D:/desktop things/uni/TERM 3/Logic Circuits/lab/experiments/07/report/adder_sub_4bit/adder_sub_1bit_tb.v
// Project Name:  adder_sub_4bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_sub_1bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_sub_1bit_tb;

	// Inputs
	reg a;
	reg b;
	reg sel;
	reg Cin;

	// Outputs
	wire sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	adder_sub_1bit uut (
		.a(a), 
		.b(b), 
		.sel(sel), 
		.Cin(Cin), 
		.sum(sum), 
		.Cout(Cout)
	);

	initial begin
		
		// testing addition 
		sel = 0;
		a = 0; b = 0; Cin = 0;
		#50;
		
		a = 0; b = 0; Cin = 1;
		#50;
		
		a = 0; b = 1; Cin = 0;
		#50;
		
		a = 0; b = 1; Cin = 1;
		#50;
		
		a = 1; b = 0; Cin = 0;
		#50;
		
		a = 1; b = 0; Cin = 1;
		#50;
		
		a = 1; b = 1; Cin = 0;
		#50;
		
		a = 1; b = 1; Cin = 1;
		#50;
		
		
		// testing subtraction 
		sel = 1;
		a = 0; b = 0; Cin = 0;
		#50;
		
		a = 0; b = 0; Cin = 1;
		#50;
		
		a = 0; b = 1; Cin = 0;
		#50;
		
		a = 0; b = 1; Cin = 1;
		#50;
		
		a = 1; b = 0; Cin = 0;
		#50;
		
		a = 1; b = 0; Cin = 1;
		#50;
		
		a = 1; b = 1; Cin = 0;
		#50;
		
		a = 1; b = 1; Cin = 1;
		#50;

		$finish;
	end
      
endmodule

