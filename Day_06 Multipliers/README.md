# Day 06: 2-Bit Multiplier

This project implements a 2-bit by 2-bit binary multiplier in Verilog. The design uses a combinational logic approach based on partial products and carry propagation.

## Objective

Multiply two 2-bit inputs, `A` and `B`, and generate a 4-bit product `P`.

A and B are defined as:

- `A = [A1:A0]`
- `B = [B1:B0]`
- `P = [P3:P0]`

The multiplier computes:

P = A × B

## Design Concept

For a 2-bit multiplier, the product is generated from partial products:

- `PP1 = A1 & B0`
- `PP2 = A0 & B1`
- `PP3 = A1 & B1`
- `P0 = A0 & B0`

The intermediate sums are combined to produce:

- `P1 = PP1 ^ PP2`
- `C1 = PP1 & PP2`
- `P2 = C1 ^ PP3`
- `P3 = C1 & PP3`

This is a compact structural implementation of a combinational multiplier.

## Verilog Code

```verilog
module multiplier_2bit ( 
  input [1:0] A, B,
  output [3:0] P
);
  wire PP1, PP2, PP3, C1;

  assign P[0] = A[0] & B[0];
  assign PP1 = A[1] & B[0];
  assign PP2 = A[0] & B[1];
  assign PP3 = A[1] & B[1];

  assign P[1] = PP1 ^ PP2;
  assign C1 = PP1 & PP2;
  assign P[2] = C1 ^ PP3;
  assign P[3] = PP3 & C1;

endmodule
```

## Files

- `multiplier_2bit.v` — 2-bit multiplier module
- `multiplier_tb.v` — testbench for verifying all combinations
- `tb_multiplier_2bit_behav.wcfg` — waveform configuration file
- `README.md` — documentation for the project

## Testbench Summary

The testbench applies multiple input combinations and prints the result of each multiplication.

```verilog
initial begin
  $display("Time\tA\tB\tProduct");
  $monitor("%0t\t%b\t%b\t%b", $time, A, B, P);

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
```

## Expected Results

| A | B | Product |
|---|---|---------|
| 00 | 00 | 0000 |
| 01 | 01 | 0001 |
| 10 | 01 | 0010 |
| 11 | 01 | 0011 |
| 01 | 10 | 0010 |
| 10 | 10 | 0100 |
| 11 | 10 | 0110 |
| 11 | 11 | 1001 |

These results match the integer multiplication of the 2-bit binary numbers.

## Learning Outcome

This project helps build understanding of:

- Binary multiplication
- Partial product generation
- Combinational logic design in Verilog
- Testbench-driven verification of digital circuits

It is a good example of how arithmetic operations can be implemented efficiently in hardware using logic gates and structural modeling.
