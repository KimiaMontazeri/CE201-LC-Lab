`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:25:39 12/19/2021
// Design Name:   system
// Module Name:   D:/desktop things/uni/TERM 3/Logic Circuits/lab/experiments/10/authentication-system/system_tb.v
// Project Name:  authentication-system
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: system
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module system_tb;

	// Inputs
	reg [3:0] system_password;
	reg request;
	reg [3:0] input_data;
	reg reset;
	reg clock;
	reg confirm;
	reg [3:0] input_password;

	// Outputs
	wire [3:0] qout_left;
	wire [3:0] qout_right;

	// Instantiate the Unit Under Test (UUT)
	system uut (
		.system_password(system_password), 
		.request(request), 
		.input_data(input_data), 
		.reset(reset), 
		.clock(clock), 
		.confirm(confirm), 
		.input_password(input_password), 
		.qout_left(qout_left), 
		.qout_right(qout_right)
	);

	initial
   begin
      clock = 1'b0;
      repeat (30)
      #10 clock = ~clock;
   end
	
	initial begin
		// Initialize Inputs
		system_password = 4'b1010;
		request = 1'b0;
		reset = 1'b0;
		
		
		#30
		reset = 1'b1;
		request = 1'b1;

		#30
		//S1
		request = 1'b1;
		confirm = 1'b1;
		input_password = 4'b1010;
		
		#40
		//S2
		request = 1'b1;
		confirm = 1'b1;
		input_data = 4'b1100;
		
		
	end
	
      
      
endmodule

