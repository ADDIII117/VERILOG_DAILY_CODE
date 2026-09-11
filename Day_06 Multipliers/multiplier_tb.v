`timescale 1ns/1ps

module multiplier_tb;
  reg [1:0] A, B;      
  wire [3:0] P;         // output

  // Instantiate the multiplier
  multiplier_2bit uut (
    .A(A),
    .B(B),
    .P(P)
  );

  initial begin
    $display("Time\tA\tB\tProduct");
    $monitor("%0t\t%b\t%b\t%b", $time, A, B, P);

    // Apply all input combinations
    A = 2'b00; B = 2'b00; #10;
    A = 2'b01; B = 2'b01; #10;
    A = 2'b10; B = 2'b01; #10;
    A = 2'b11; B = 2'b01; #10;
    A = 2'b01; B = 2'b10; #10;
    A = 2'b10; B = 2'b10; #10;
    A = 2'b11; B = 2'b10; #10;
    A = 2'b11; B = 2'b11; #10;

    $finish;
  end
endmodule
