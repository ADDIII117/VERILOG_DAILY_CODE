# Day 05: 4-bit Adder / Subtractor

This project implements a 4-bit adder/subtractor in Verilog using a ripple-carry structure. The circuit can perform either addition or subtraction depending on the mode select input.

## Objective

Design a combinational logic circuit that supports:

- Addition: A + B
- Subtraction: A - B

The operation is controlled by a single input `M`:

- `M = 0` → addition mode
- `M = 1` → subtraction mode

## Working Principle

When subtracting, the circuit uses the two's complement method:

A - B = A + (~B) + 1

To do this:

- `B` is inverted when `M = 1`
- The carry-in of the least significant bit is set to `M`
- The ripple-carry adder then computes the correct result

## Design Overview

The implementation is built from a 1-bit full adder reused four times.

```verilog
module full_adder ( 
  input A, B, M,
  output sum, Carry_out
);

  assign sum = A ^ B ^ M;
  assign Carry_out = A & B | (M & (A ^ B));
endmodule

module adder_subctractor (
  input [3:0] A, B,
  input M,
  output [3:0] sum,
  output Carry_out
);

  wire C1, C2, C3;
  wire [3:0] D;

  assign D = {4{M}} ^ B;

  full_adder FA0 (A[0], D[0], M, sum[0], C1);
  full_adder FA1 (A[1], D[1], C1, sum[1], C2);
  full_adder FA2 (A[2], D[2], C2, sum[2], C3);
  full_adder FA3 (A[3], D[3], C3, sum[3], Carry_out);
endmodule
```

## Files

- `adder_subctractor.v` — RTL implementation of the 4-bit adder/subtractor
- `adder_subctractor_tb.v` — simulation testbench
- `README.md` — project documentation

## Testbench Behavior

The testbench checks both arithmetic modes:

- Addition examples
- Subtraction examples
- Negative result handling using 2's complement representation

A sample output format is shown below:

```verilog
initial begin
  $display("Time |   A    B   M | Result  Carry");
  $display("-----------------------------------");

  M = 0;
  A = 4'b0010; B = 4'b0001; #10;
  $display("%4t | %b %b %b | %b   %b", $time, A, B, M, sum, Carry_out);

  M = 1;
  A = 4'b0101; B = 4'b0011; #10;
  $display("%4t | %b %b %b | %b   %b", $time, A, B, M, sum, Carry_out);

  $finish;
end
```

## Simulation Result

<img width="1920" height="1140" alt="Screenshot 2026-09-02 004236" src="https://github.com/user-attachments/assets/fa1aa662-6924-4971-bdd6-1246a31fbc46" />

## Learning Outcome

This project helps reinforce:

- Ripple-carry adder design
- Subtraction using two's complement
- Verilog structural modeling
- Testbench-driven verification of arithmetic circuits

This is a practical digital design exercise that connects combinational logic with real arithmetic operations in hardware.
