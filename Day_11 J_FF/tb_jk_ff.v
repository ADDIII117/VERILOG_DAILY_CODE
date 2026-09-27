
module tb_jk_ff;
  reg J, K, CLK, RST;
  wire Q, QB;

  
  jk_ff uut (.J(J), .K(K), .CLK(CLK), .RST(RST), .Q(Q), .QB(QB));

  
  initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;  
  end

  
  initial begin
    $monitor("Time=%0t | J=%b K=%b RST=%b | Q=%b QB=%b", $time, J, K, RST, Q, QB);

    RST = 1; J = 0; K = 0; #10;   
    RST = 0; J = 0; K = 0; #10;   
    J = 1; K = 0; #10;           
    J = 0; K = 1; #10;          
    J = 1; K = 1; #10;         
    J = 1; K = 1; #20;            
    $finish;
  end
endmodule
