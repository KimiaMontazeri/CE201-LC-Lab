`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:46:39 12/19/2021 
// Design Name: 
// Module Name:    dff 
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
module dff (Q , QP, CLK , Din, rst);
	input CLK,Din,rst;
	output Q , QP;
	reg Q , QP;
	
	initial 
		begin
			Q = 1'b0; 
			QP = 1'b1;
	   end
	
    always @ (posedge CLK) 
			begin
			  if(~rst)
				  begin
					Q = 1'b0;
					QP= 1'b1;
				  end
			  else
				  begin
					Q = Din;
					QP = ~Din;
				  end
			  
			end
endmodule
