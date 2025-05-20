module pisca_pisca_tb();
  
  logic clk;
  logic rst;
  logic pisca;
  
  parameter clock_periodo = 10;
  
  pisca_pisca pp(
    .clk(clk),
    .rst(rst),
    .pisca(pisca)
  );
  
  initial begin
    
    clk = 0;
    
  end
  
  always #(clock_periodo/2) clk = ~clk;
  
  initial begin
    
    
    rst = 1;
    #10
    rst = 0;
    
    $monitor(
      $time,
      "\nPisca = ",
      pisca,
      "\n"
    );
    
    #60
    $finish;
    
  end
  
endmodule
