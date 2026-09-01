`timescale 1ns / 1ps

module adder_subctractor_tb;
  reg [3:0] A, B;
  reg M;                  // Mode: 0 = Add, 1 = Subtract
  wire [3:0] sum;
  wire Carry_out;
  
  adder_subctractor uut (.A(A), .B(B), .M(M), .sum(sum), .Carry_out(Carry_out));
  
  initial begin
    $display("Time |   A    B   M | Result  Carry");
    $display("-----------------------------------");
    
    // Addition tests
    M = 0;
    A = 4'b0010; B = 4'b0001; #10; // 2 + 1
    $display("%4t | %b %b %b | %b   %b", $time, A, B, M, sum, Carry_out);
    
    A = 4'b0101; B = 4'b0011; #10; // 5 + 3
    $display("%4t | %b %b %b | %b   %b", $time, A, B, M, sum, Carry_out);
    
    A = 4'b1111; B = 4'b0001; #10; // 15 + 1
    $display("%4t | %b %b %b | %b   %b", $time, A, B, M, sum, Carry_out);
    
    // Subtraction tests
    M = 1;
    A = 4'b0101; B = 4'b0011; #10; // 5 - 3
    $display("%4t | %b %b %b | %b   %b", $time, A, B, M, sum, Carry_out);
    
    A = 4'b1000; B = 4'b0100; #10; // 8 - 4
    $display("%4t | %b %b %b | %b   %b", $time, A, B, M, sum, Carry_out);
    
    A = 4'b0011; B = 4'b0101; #10; // 3 - 5 (negative result in 2's complement)
    $display("%4t | %b %b %b | %b   %b", $time, A, B, M, sum, Carry_out);
    
    $finish;
  end
endmodule
