`timescale 1ns / 1ps

`timescale 1 ns/1 ns

module multiplexer4x4 (
	input [3:0] w3 ,
	input [3:0] w2 ,
	input [3:0] w1 ,
	input [3:0] w0 ,
	input [1:0] sel ,
	output [3:0] result 
);

	assign result = sel[1] ? (sel[0] ? w3 : w2) : (sel[0] ? w1 : w0);

endmodule
