`timescale 1ns / 1ps
`include "./finite_state_machine.v"
`include "./register.v"

module system (
   input [3:0]      system_password,
   input            request,
	input  [3:0]    input_data,
	input           reset,
	input           clock,
	input           confirm ,
	input  [3:0]    input_password,
	output   [3:0]  qout_left,
	output   [3:0]  qout_right
);
	wire en_left ;
	wire en_right ;
   wire [3:0] data_to_save; 

	finite_state_machine fsm(
        system_password, 
        request, 
        input_data, 
        reset, 
        clock, 
        confirm , 
        input_password,
        en_left , 
        en_right , 
        data_to_save
    );

	register left_reg(data_to_save, clock, reset, en_left,  qout_left);
	register right_reg(data_to_save, clock, reset, en_right,  qout_right);

endmodule