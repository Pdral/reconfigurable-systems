// Code your design here
module FSM (
		input logic clk,
		input logic reset,
		input logic in_value,
		output logic out_value);
	
	typedef enum logic [2:0] {A, B, C, D, E} State;
	
	State currentState, nextState;
	
	always_ff @(posedge clk)
	if(reset) begin 
		currentState <= A;
	end else begin
		currentState <= nextState;
	end
	
	always_comb begin
	
		case(currentState)
		A: if(in_value) nextState = C;
			else nextState = B;
			
		B: if(in_value) nextState = D;
			else nextState = B;
			
		C: if(in_value) nextState = C;
			else nextState = E;
		
		D: if(in_value) nextState = C;
			else nextState = E;
			
		E: if(in_value) nextState = D;
			else nextState = B;
			
		default: nextState = A;
	
		endcase
		
	end
	
	assign out_value = (currentState == D | currentState == E);

endmodule
