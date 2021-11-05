`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:49:20 11/04/2021
// Design Name:   simple_xnor
// Module Name:   D:/desktop things/uni/TERM 3/Logic Circuits/lab/experiments/04/report/project_4.3/simple_xnor_tb.v
// Project Name:  project_4.3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: simple_xnor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module simple_xnor_tb;
reg a,b,c;
wire result;
simple_xnor sr(a,b,c,result);
initial 
    begin
        a=0; b= 0; c=0;
        #100 a=0; b= 0; c=1;
        #100 a=0; b= 1; c=0;
        #100 a=0; b= 1; c=1;
        #100 a=1; b= 0; c=0;
        #100 a=1; b= 0; c=1;
        #100 a=1; b= 1; c=0;
        #100 a=1; b= 1; c=1;
    end
endmodule


