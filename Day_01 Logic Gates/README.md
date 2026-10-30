# Day 01: Logic Gates

This exercise introduces the basic building blocks of digital logic in Verilog.

## Objective
Implement a combinational logic module that performs the following operations on two inputs, `a` and `b`:

- AND
- OR
- NOT (`a`)
- XOR
- NAND
- NOR

## Files

- `logic_gates.v` — module definition for the logic gate circuit
- `logic_tb.v` — simple testbench to stimulate the design
- `README.md` — documentation for this exercise

## Module Design

The design is implemented in `logic_gates.v` as a single module with two inputs and six outputs:

```verilog
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
```

## Expected Logic Behavior

| a | b | AND | OR | NOT a | XOR | NAND | NOR |
|---|---|-----|----|-------|-----|------|-----|
| 0 | 0 | 0 | 0 | 1 | 0 | 1 | 1 |
| 0 | 1 | 0 | 1 | 1 | 1 | 1 | 0 |
| 1 | 0 | 0 | 1 | 0 | 1 | 1 | 0 |
| 1 | 1 | 1 | 1 | 0 | 0 | 0 | 0 |

## Testbench

The testbench in `logic_tb.v` applies all four combinations of `a` and `b` and ends the simulation after a short delay for each pattern.

```verilog
initial begin
  a=0; b=0; #20ps;
  a=0; b=1; #20ps;
  a=1; b=0; #20ps;
  a=1; b=1; #20ps;
  $finish;
end
```

## Learning Outcome

This exercise helps build a solid foundation in:

- Verilog gate-level modeling
- Boolean logic design
- Simulation using testbenches
- Digital circuit behavior and truth tables

## Suggested Tools

- Xilinx Vivado
- ModelSim or QuestaSim
- Cadence tools for digital design flow

This is a beginner-friendly introduction to digital design and combinational logic in Verilog.
