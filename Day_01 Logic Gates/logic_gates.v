
module logic_gates (
  input a, b,
  output and_out, or_out, not_a, xor_out, nand_out, nor_out
);
  assign and_out = a & b;
  assign or_out = a | b;
  assign not_a = ~a;
  assign xor_out = a ^ b;
  assign nand_out = ~(a & b);
  assign nor_out = ~(a | b);
  
endmodule
