module fulladdr_tb();
  
  logic a;
  logic b;
  logic cin;
  logic s;
  logic cout;
  
  fulladdr fulladdrg(
    .a(a),
    .b(b),
    .cin(cin),
    .s(s),
    .cout(cout)
  );
  
  initial begin
    
    $monitor(
      $time,
      "\nA = ",
      a,
      "\nB = ", 
      b,
      "\nCin = ",
      cin,
      "\nS = ",
      s,
      "\nCout = ",
      cout,
      "\n"
    );
    
    a = 0;
    b = 0;
    cin = 0;
    
    #5
    a = 0;
    b = 0;
    cin = 1;
    
    #5
    a = 0;
    b = 1;
    cin = 0;
    
    #5
    a = 0;
    b = 1;
    cin = 1;
    
    #5
    a = 1;
    b = 0;
    cin = 0;
    
    #5
    a = 1;
    b = 0;
    cin = 1;
    
    #5
    a = 1;
    b = 1;
    cin = 0;
    
    #5
    a = 1;
    b = 1;
    cin = 1;
    
    #5
    $display("End sim");
  end
  
endmodule
