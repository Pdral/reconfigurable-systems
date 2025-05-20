module design_tb();
  
  logic a;
  logic b;
  logic c;
  logic d;
  logic s;
  
  design designgate(.*);
  
  initial begin
    
    $monitor(
      $time,
      "\nchaveA = ",
      a,
      "\nchaveB = ", 
      b,
      "\nchaveC = ", 
      c,
      "\nchaveD = ", 
      d,
      "\noutput = ",
      s,
      "\n"
    );
    
    a = 0;
    b = 0;
    c = 0;
    d = 0;
    
    #5
    a = 0;
    b = 0;
    c = 0;
    d = 1;
    
    #5
    a = 0;
    b = 0;
    c = 1;
    d = 0;
    
    #5
    a = 0;
    b = 0;
    c = 1;
    d = 1;
    
    #5
    a = 0;
    b = 1;
    c = 0;
    d = 0;
    
    #5
    a = 0;
    b = 1;
    c = 0;
    d = 1;
    
    #5
    a = 0;
    b = 1;
    c = 1;
    d = 0;
    
    #5
    a = 0;
    b = 1;
    c = 1;
    d = 1;
    
    #5
    a = 1;
    b = 0;
    c = 0;
    d = 0;
    
    #5
    a = 1;
    b = 0;
    c = 0;
    d = 1;
    
    #5
    a = 1;
    b = 0;
    c = 1;
    d = 0;
    
    #5
    a = 1;
    b = 0;
    c = 1;
    d = 1;
    
    #5
    a = 1;
    b = 1;
    c = 0;
    d = 0;
    
    #5
    a = 1;
    b = 1;
    c = 0;
    d = 1;
    
    #5
    a = 1;
    b = 1;
    c = 1;
    d = 0;
    
    #5
    a = 1;
    b = 1;
    c = 1;
    d = 1;
    
    #5
    $display("End sim");
  end
  
endmodule
