`timescale 1ns / 1ps
`include "adder_sub_4bit.v"
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:40:53 11/21/2021
// Design Name:   adder_sub_4bit
// Module Name:   D:/desktop things/uni/TERM 3/Logic Circuits/lab/experiments/07/report/adder_sub_4bit/adder_sub_4bit_tb.v
// Project Name:  adder_sub_4bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_sub_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_sub_4bit_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg sel;
	// Outputs 
	wire [3:0] S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	adder_sub_4bit uut (
		.A(A), 
		.B(B), 
		.sel(sel), 
		.S(S), 
		.Cout(Cout)
	);

	initial begin
		
		// A>0 B>0 both positive 
		A = 4'b0001;
		B = 4'b0010;
		
		sel = 0; // 0011
		#100;
		
		sel = 1; // 1111
		#100;
				
		A = 4'b0110;
		B = 4'b0100;
		
		sel = 0; // 1010
		#100; 
		
		sel = 1; // Cout = 1, sum = 0010
		#100;
			
			
			
		// A<0 B>0 A negative 
		A = 4'b1111; // -0001
		B = 4'b0010;
		
		sel = 0; // Cout = 1, sum = 0001
		#100;
		
		sel = 1; // Cout = 1, sum = 1101
		#100;
		
		A = 4'b1010; // -0110
		B = 4'b0100;
		
		sel = 0; // 1110
		#100;
		
		sel = 1; // Cout = 1, 0110
		#100;

	
			
		// A<0 B<0 both negative 
		A = 4'b1111; // -0001
		B = 4'b1110; // -0010
		
		sel = 0; // Cout = 1, 1101
		#100;
		
		sel = 1; // Cout = 1, 0001
		#100;
		
		A = 4'b1010; // -0110
		B = 4'b1100; // -0100
		
		sel = 0; // Cout = 1, 0110
		#100;
		
		sel = 1; // 1110
		#100;
			
			
			
		$finish;

	end
      
endmodule

