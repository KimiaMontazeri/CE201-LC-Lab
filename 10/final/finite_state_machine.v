`timescale 1ns / 1ns

module finite_state_machine (
   input [3:0]          secret_pass,
   input                request,
	input  [3:0]        din,
	input               reset ,
	input               clock,
	input               confirm,
	input  [3:0]        pass_data,
	output reg          en_left,
	output reg          en_right,
	output reg [3:0]    dout
);
    reg [2:0] present_state, next_state;
    /*
    * every state meaning: 
    * S0 = system start (initial)
    * S1 = the uesr has request equal to 1 but haven't pressed confrim button
    * S2 = the user has given valid password
    * S3 = the user has given invalid password
    * S4 = waiting for the user to give for saving 
    * S5 = the input number is even
    * S6 = the input number is odd
    */
    parameter 
    S0 = 3'b000,
    S1 = 3'b001, 
    S2 = 3'b101, 
    S3 = 3'b111, 
    S4 = 3'b110, 
    S5 = 3'b011, 
    S6 = 3'b100;
  

   always @ (posedge clock or negedge reset)
        if (~reset) present_state = S0;  //Initialize to state S0
        else present_state = next_state; //Clock operations

   always @ (present_state or confirm or request or din or pass_data or secret_pass)     
        case (present_state)
            S0: if (~request) next_state = S0;
				else next_state = S1;	 
					 
            S1: if(~request) next_state = S0; else if (request & ~confirm) next_state = S1;  
                else if(request & confirm & secret_pass == pass_data) next_state = S2;
                else if(request & confirm & secret_pass != pass_data) next_state = S3;

            S2: if(~request) next_state = S0;  
				else if (request & ~confirm) next_state = S2;  
                else if (request & confirm) next_state = S4;  
				
            S3: if(~request) next_state = S0; 
				else next_state = S3; 

			S4: if( request & din[0] == 1'b1)  next_state = S6;  
                else if( request & din[0] == 1'b0)  next_state = S5; 	
         endcase
			
	always @ (present_state or confirm or request or din)      //Evaluate output
         case (present_state)
            S0: begin  en_left=1'b0 ;  en_right=1'b0 ; end
            S1: begin en_left=1'b0 ; en_right=1'b0 ; end
            S2: begin en_left=1'b0 ; en_right=1'b0 ; end
            S3: begin en_left=1'b0 ; en_right=1'b0 ; end
            S4: begin dout = din;
				if (next_state== S5) begin 
                    en_right=1'b1; 
                    en_left=1'b0;
                end else if (next_state == S6) begin 
                    en_right=1'b0; 
                    en_left=1'b1;
                    end
				end
         endcase
endmodule