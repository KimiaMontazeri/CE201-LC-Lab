`timescale 1ns / 1ps
`include "./alu.v"

module ALU_TB;
	reg [1:0] A;
	reg [1:0] B;
	reg [1:0] sel;

	wire [3:0] Y;

	alu uut (A, B, sel, Y);

	initial begin
		$dumpfile("alu_tb.vcd");
		$dumpvars(0, ALU_TB);
		
		A = 2'b00;B = 2'b00;sel = 2'b00;#100;
		A = 2'b10;B = 2'b01;sel = 2'b00; #100;
		A = 2'b10;B = 2'b10;sel = 2'b00;#100;
		A = 2'b11;B = 2'b11;sel = 2'b00;#100;

		A = 2'b00;B = 2'b00;sel = 2'b01;#100;
		A = 2'b10;B = 2'b01;sel = 2'b01; #100;
		A = 2'b10;B = 2'b10;sel = 2'b01;#100;
		A = 2'b11;B = 2'b11;sel = 2'b01;#100;

		A = 2'b00;B = 2'b00;sel = 2'b10;#100;
		A = 2'b10;B = 2'b01;sel = 2'b10;#100;
		A = 2'b10;B = 2'b10;sel = 2'b10;#100;
		A = 2'b11;B = 2'b11;sel = 2'b10;#100;
        
		A = 2'b00;B = 2'b00;sel = 2'b11;#100;
		A = 2'b10;B = 2'b01;sel = 2'b11;#100;
		A = 2'b10;B = 2'b10;sel = 2'b11;#100;
		A = 2'b11;B = 2'b11;sel = 2'b11;#100;	
		$finish;
	end
      
endmodule

