`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:48:29 11/04/2021 
// Design Name: 
// Module Name:    simple_xnor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module simple_xnor(a,b,c,result);
    input a,b,c;
    output result;
    xnor(result, a,b,c);
endmodule
