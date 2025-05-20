// Code your design here
module FSM (
		input logic clk,
		input logic reset,
		input logic D,
  		input logic N,
		output logic out_value);
	
  typedef enum logic [1:0] {S0, S1, S2, S3} State;
	
	State currentState, nextState;
	
	always_ff @(posedge clk)
	if(reset) begin 
		currentState <= S0;
	end else begin
		currentState <= nextState;
	end
	
	always_comb begin
	
		case(currentState)
        S0: if(D) nextState = S2;
			else begin
              if(N) nextState = S1;
              else nextState = S0;
            end
			
        S1: if(D) nextState = S3;
			else begin
              if(N) nextState = S2;
              else nextState = S1;
            end
			
        S2: if(D | N) nextState = S3;
			else nextState = S2;
		
        S3: if(D | N) nextState = S1;
			else nextState = S3;
			
		default: nextState = S0;
	
		endcase
		
	end
	
  assign out_value = (currentState == S3);

endmodule
