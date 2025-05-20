module reg_des_tb();
  
  logic data_in;
  logic clock;
  logic reset;
  logic data_out;
  
  parameter clock_periodo = 10;
  
  reg_des rd(
    .clock(clock),
    .reset(reset),
    .data_in(data_in),
    .data_out(data_out)
  );
  
  initial begin
    
    clock = 0;
    
  end
  
  always #(clock_periodo/2) clock = ~clock;
  
  initial begin
    
    data_in = 1;
    
    reset = 1;
    #10
    reset = 0;
    display;
    display;
    display;
    display;
    data_in = 0;
    display;
    display;
    display;
    display;
    display;
    display;
    
    #500
    $finish;
    
  end
  
  task display;
    #10 $display ("%b", data_out);
  endtask
  
endmodule
