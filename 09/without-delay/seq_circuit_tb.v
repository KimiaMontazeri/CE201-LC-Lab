`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:26:37 12/12/2021
// Design Name:   seq_circuit_no_delay
// Module Name:   D:/desktop things/uni/TERM 3/Logic Circuits/lab/experiments/09/without-delay/seq_circuit_tb.v
// Project Name:  without-delay
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seq_circuit_no_delay
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seq_circuit_tb;

	// Inputs
	reg RST;
	reg CLK;
	reg A;
	reg B;

	// Outputs
	wire Y;
	wire Z;
	wire X;
	wire R;
	wire S;

	// Instantiate the Unit Under Test (UUT)
	seq_circuit_no_delay uut (
		.RST(RST), 
		.CLK(CLK), 
		.A(A), 
		.B(B), 
		.Y(Y), 
		.Z(Z), 
		.X(X), 
		.R(R), 
		.S(S)
	);

	initial begin
		RST = 0;
		{CLK,A,B} = 3'b000;
		#40;
		{CLK,A,B} = 3'b100;
		#40;
		{CLK,A,B} = 3'b001;
		#40;
		{CLK,A,B} = 3'b111;
		#40;
		{CLK,A,B} = 3'b011;
		#40;
		{CLK,A,B} = 3'b101;
		#40;
		{CLK,A,B} = 3'b001;
		#40;
		{CLK,A,B} = 3'b100;
		#40;
		{CLK,A,B} = 3'b010;
		#40;
		{CLK,A,B} = 3'b110;
		#40;
		{CLK,A,B} = 3'b010;
		#40;
		{CLK,A,B} = 3'b111;
		#40;
		{CLK,A,B} = 3'b000;
		#40;
		{CLK,A,B} = 3'b100;
		#40;
		{CLK,A,B} = 3'b000;
		#40;
		{CLK,A,B} = 3'b101;
		#40;
		{CLK,A,B} = 3'b011;
		#40;
		{CLK,A,B} = 3'b111;
		#40;
		
		//$stop;
		$finish;

	end
      
endmodule

