
module ripple_carry_rb;
  reg [3:0] A, B;
  reg Cin;
  wire [3:0] sum;
  wire Carry_out;
  
  ripple_carry_4bit_adder uut (.A(A), .B(B), .Cin(Cin), .sum(sum), .Carry_out(Carry_out) );
  
  initial
  begin
    A=4'b0000; B=4'b0000; Cin=0; #10;
    $display (" %b  %b  %b  | %b %b ", A, B, Cin, sum, Carry_out);
    
    A=4'b0000; B=4'b0000; Cin=1; #10;
    $display (" %b  %b  %b  | %b %b ", A, B, Cin, sum, Carry_out);
    
    A=4'b0001; B=4'b0001; Cin=0; #10;
    $display (" %b  %b  %b  | %b %b ", A, B, Cin, sum, Carry_out);
    
    A=4'b0011; B=4'b0101; Cin=0; #10;
    $display (" %b  %b  %b  | %b %b ", A, B, Cin, sum, Carry_out);
    
    A=4'b1111; B=4'b0001; Cin=0; #10;
    $display (" %b  %b  %b  | %b %b ", A, B, Cin, sum, Carry_out);
    
    A=4'b1111; B=4'b1111; Cin=0; #10;
    $display (" %b  %b  %b  | %b %b ", A, B, Cin, sum, Carry_out);
    
    A=4'b1111; B=4'b1111; Cin=1; #10;
    $display (" %b  %b  %b  | %b %b ", A, B, Cin, sum, Carry_out); 
    
    $finish;
  end
endmodule
