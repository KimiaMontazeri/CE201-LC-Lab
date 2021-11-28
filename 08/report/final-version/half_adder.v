`timescale 1ns / 1ps
module half_adder(input a, input b , output sum, output carryOut);
	assign sum = a ^ b;
	assign carryOut = a & b;
endmodule
