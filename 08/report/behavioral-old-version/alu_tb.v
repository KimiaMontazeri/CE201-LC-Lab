`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:50:05 11/28/2021
// Design Name:   alu
// Module Name:   D:/desktop things/uni/TERM 3/Logic Circuits/lab/experiments/08/report/project_8/alu_tb.v
// Project Name:  project_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

	// Inputs
	reg [1:0] A;
	reg [1:0] B;
	reg [1:0] sel;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.A(A), 
		.B(B), 
		.sel(sel), 
		.y(y)
	);

	initial begin
		// A = 00
		A = 2'b00; B = 2'b00; sel = 2'b00;
		repeat(3)
		#20 sel = sel + 2'b01;
		
		#20; A = 2'b00; B = 2'b01; sel = 2'b00;
		repeat(3)
		#20 sel = sel + 2'b01;
		
		#20; A = 2'b00; B = 2'b10; sel = 2'b00;
		repeat(3)
		#20 sel = sel + 2'b01;
		
		#20; A = 2'b00; B = 2'b11; sel = 2'b00;
		repeat(3)
		#20 sel = sel + 2'b01;
		
		// A = 01
		#20; A = 2'b01; B = 2'b00; sel = 2'b00;
		repeat(3)
		#20 sel = sel + 2'b01;
		
		#20; A = 2'b01; B = 2'b01; sel = 2'b00;
		repeat(3)
		#20 sel = sel + 2'b01;
		
		#20; A = 2'b01; B = 2'b10; sel = 2'b00;
		repeat(3)
		#20 sel = sel + 2'b01;
		
		#20; A = 2'b01; B = 2'b11; sel = 2'b00;
		repeat(3)
		#20 sel = sel + 2'b01;
		
		// A = 10 
		#20; A = 2'b10; B = 2'b00; sel = 2'b00;
		repeat(3)
		#20 sel = sel + 2'b01;
		
		#20; A = 2'b10; B = 2'b01; sel = 2'b00;
		repeat(3)
		#20 sel = sel + 2'b01;
		
		#20; A = 2'b10; B = 2'b10; sel = 2'b00;
		repeat(3)
		#20 sel = sel + 2'b01;
		
		#20; A = 2'b10; B = 2'b11; sel = 2'b00;
		repeat(3)
		#20 sel = sel + 2'b01;
		
		// A = 11
		#20; A = 2'b11; B = 2'b00; sel = 2'b00;
		repeat(3)
		#20 sel = sel + 2'b01;
		
		#20; A = 2'b11; B = 2'b01; sel = 2'b00;
		repeat(3)
		#20 sel = sel + 2'b01;
		
		#20; A = 2'b11; B = 2'b10; sel = 2'b00;
		repeat(3)
		#20 sel = sel + 2'b01;
		
		#20; A = 2'b11; B = 2'b11; sel = 2'b00;
		repeat(3)
		#20 sel = sel + 2'b01;
		
		#20; A = 2'b11; B = 2'b11; sel = 2'b00;
		#20; A = 2'b11; B = 2'b11; sel = 2'b01;
		#20; A = 2'b11; B = 2'b11; sel = 2'b10;
		#20; A = 2'b11; B = 2'b11; sel = 2'b11;
		
		$finish;

	end
      
endmodule

