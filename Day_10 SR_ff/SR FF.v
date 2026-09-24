module srff (
  input S, R, CLK,
  output Q, QB
  );
  
  wire A, B;
  
  nand (A,S,CLK);
  nand (B,R,CLK);
  nand (Q,A,QB);
  nand (QB,B,Q);
endmodule


