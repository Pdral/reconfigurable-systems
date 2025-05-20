module nandgate_tb();
  
  logic ch_a;
  logic ch_b;
  logic ch_c;
  logic led_d;
  
  nandgate nandg(
    .a(ch_a),
    .b(ch_b),
    .c(ch_c),
    .d(led_d)
  );
  
  initial begin
    
    $monitor(
      $time,
      "\nchaveA = ",
      ch_a,
      "\nchaveB = ", 
      ch_b,
      "\nchaveC = ", 
      ch_c,
      "\noutput = ",
      led_d,
      "\n"
    );
    
    ch_a = 0;
    ch_b = 0;
    ch_c = 0;
    
    #5
    ch_a = 0;
    ch_b = 0;
    ch_c = 1;
    
    #5
    ch_a = 0;
    ch_b = 1;
    ch_c = 0;
    
    #5
    ch_a = 0;
    ch_b = 1;
    ch_c = 1;
    
    #5
    ch_a = 1;
    ch_b = 0;
    ch_c = 0;
    
    #5
    ch_a = 1;
    ch_b = 0;
    ch_c = 1;
    
    #5
    ch_a = 1;
    ch_b = 1;
    ch_c = 0;
    
    #5
    ch_a = 1;
    ch_b = 1;
    ch_c = 1;
    
    #5
    $display("End sim");
  end
  
endmodule
