
module tb_logic_gates;
  reg a, b;
  wire and_out, or_out, not_a, xor_out, nand_out, nor_out;
  
  logic_gates uut(.a(a), .b(b), .and_out(and_out), .or_out(or_out), .not_a(not_a), .xor_out(xor_out),
  .nand_out(nand_out), .nor_out(nor_out));
  
  initial begin
    a=0; b=0; #20ps; 
    a=0; b=1; #20ps;
    a=1; b=0; #20ps;
    a=1; b=1; #20ps;
    $finish;
  end
endmodule