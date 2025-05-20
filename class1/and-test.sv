module andgate_tb();
  
  logic ch_a;
  logic ch_b;
  logic led_c;
  
  andgate andg(
    .a(ch_a),
    .b(ch_b),
    .c(led_c)
  );
  
  initial begin
    
    $monitor(
      $time,
      "\nchaveA = ",
      ch_a,
      "\nchaveB = ", 
      ch_b,
      "\noutput = ",
      led_c,
      "\n"
    );
    
    ch_a = 0;
    ch_b = 0;
    
    #5
    ch_a = 0;
    ch_b = 1;
    
    #5
    ch_a = 1;
    ch_b = 0;
    
    #5
    ch_a = 1;
    ch_b = 1;
    
    #5
    $display("End sim");
  end
  
endmodule
