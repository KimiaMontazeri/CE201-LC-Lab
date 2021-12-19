`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//
// Create Date:   13:32:41 12/12/2021
// Design Name:   seq_circuit_delay
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
	wire temp;
	wire R;
	wire S;

	// Instantiate the Unit Under Test (UUT)
	seq_circuit_delay uut (
		.RST(RST), 
		.CLK(CLK), 
		.A(A), 
		.B(B), 
		.Y(Y), 
		.Z(Z), 
		.temp(temp), 
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
		
		$finish;

	end
      
endmodule

