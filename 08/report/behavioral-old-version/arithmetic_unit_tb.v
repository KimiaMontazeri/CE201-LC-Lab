`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:28:38 11/28/2021
// Design Name:   arithmetic_unit
// Module Name:   D:/desktop things/uni/TERM 3/Logic Circuits/lab/experiments/08/report/project_8/arithmetic_unit_tb.v
// Project Name:  project_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: arithmetic_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module arithmetic_unit_tb;

	// Inputs
	reg [1:0] A;
	reg [1:0] B;
	reg sel;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	arithmetic_unit uut (
		.A(A), 
		.B(B), 
		.sel(sel), 
		.y(y)
	);

	initial begin
		// A = 00
		A = 2'b00; B = 2'b00; sel = 0;
		#20;
		A = 2'b00; B = 2'b00; sel = 1;
		#20;
		
		A = 2'b00; B = 2'b01; sel = 0;
		#20;
		A = 2'b00; B = 2'b01; sel = 1;
		#20;
		
		A = 2'b00; B = 2'b10; sel = 0;
		#20;
		A = 2'b00; B = 2'b10; sel = 1;
		#20;
		
		A = 2'b00; B = 2'b11; sel = 0;
		#20;
		A = 2'b00; B = 2'b11; sel = 1;
		#20;
		
		// A = 01 
		A = 2'b01; B = 2'b00; sel = 0;
		#20;
		A = 2'b01; B = 2'b00; sel = 1;
		#20;
		
		A = 2'b01; B = 2'b01; sel = 0;
		#20;
		A = 2'b01; B = 2'b01; sel = 1;
		#20;
		
		A = 2'b01; B = 2'b10; sel = 0;
		#20;
		A = 2'b01; B = 2'b10; sel = 1;
		#20;
		
		A = 2'b01; B = 2'b11; sel = 0;
		#20;
		A = 2'b01; B = 2'b11; sel = 1;
		#20;
		
		// A = 10 
		A = 2'b10; B = 2'b00; sel = 0;
		#20;
		A = 2'b10; B = 2'b00; sel = 1;
		#20;
		
		A = 2'b10; B = 2'b01; sel = 0;
		#20;
		A = 2'b10; B = 2'b01; sel = 1;
		#20;
		
		A = 2'b10; B = 2'b10; sel = 0;
		#20;
		A = 2'b10; B = 2'b10; sel = 1;
		#20;
		
		A = 2'b10; B = 2'b11; sel = 0;
		#20;
		A = 2'b10; B = 2'b11; sel = 1;
		#20;
		
		// A = 11
		A = 2'b11; B = 2'b00; sel = 0;
		#20;
		A = 2'b11; B = 2'b00; sel = 1;
		#20;
		
		A = 2'b11; B = 2'b01; sel = 0;
		#20;
		A = 2'b11; B = 2'b01; sel = 0;
		#20;
		
		A = 2'b11; B = 2'b10; sel = 0;
		#20;
		A = 2'b11; B = 2'b10; sel = 1;
		#20;
		
		A = 2'b11; B = 2'b11; sel = 0;
		#20;
		A = 2'b11; B = 2'b11; sel = 1;
		#20;
		
		$finish;

	end
      
endmodule

