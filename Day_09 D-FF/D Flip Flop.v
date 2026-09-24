
     
module dff(
  input D, CLK, RST,
  output reg Q,
  output QB 
  );
  
   always @ (posedge CLK)
    begin
     if (RST)
      begin 
       Q <= 1'b0;
      end 
     else 
      begin 
       Q <= D;
      end
    end 
    assign QB = ~Q;
    
  endmodule 
     
     
     
     
`timescale 1ns/1ps

module tb_dff;
  reg D, CLK, RST;
  wire Q, QB;

  dff uut (.D(D), .CLK(CLK), .RST(RST), .Q(Q), .QB(QB));
  initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;  
  end
  initial begin
    $monitor("Time=%0t | D=%b | RST=%b | Q=%b | QB=%b", $time, D, RST, Q, QB);

    RST = 1; D = 0;
    #10;   

    RST = 0; D = 1;
    #10;

    D = 0;
    #10;

    D = 1;
    #10;

    RST = 1; 
    #10;

    RST = 0; D = 0;
    #10;

    $finish;
  end
endmodule
     