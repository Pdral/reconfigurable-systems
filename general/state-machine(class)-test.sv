// Code your testbench here
// or browse Examples
module FSM_TB;

  logic clk;
  logic reset;
  logic in_value;

  logic out_value;
  
	
  FSM dut(
		.clk(clk),
		.reset(reset),
    	.in_value(in_value),
		.out_value(out_value) );
	
	always begin
		clk <= 1;
		#5;
		clk <= 0;
		#5;
	end
	
	initial begin
  
      reset <= 1;
      #10;
      $display("out_value: ", out_value);
      assert(out_value === 0) else $error("Expected 0");
      
      reset <= 0;

      in_value <=0;
      #10;
      $display("out_value: ", out_value);

      in_value <=1;
      #10;
      $display("out_value: ", out_value);

      in_value <=1;
      #10;
      $display("out_value: ", out_value);

      in_value <=1;
      #10;
      $display("out_value: ", out_value);

      in_value <=0;
      #10;
      $display("out_value: ", out_value);
	
	end
	
endmodule
