# Day 03: Full Adder

This project implements a 1-bit full adder in Verilog and verifies its functionality using simulation tools.

## Overview

A full adder adds three input bits:
- A
- B
- Cin (carry-in)

It produces two outputs:
- Sum
- Cout (carry-out)

This circuit is a basic building block in digital arithmetic and is used in ripple-carry adders and arithmetic logic units.

## Logic Equation

- Sum = A XOR B XOR Cin
- Cout = (A AND B) OR (Cin AND (A XOR B))

## Verilog Code

```verilog
module full_adder (
    input  wire A,
    input  wire B,
    input  wire Cin,
    output wire Sum,
    output wire Cout
);

    assign Sum  = A ^ B ^ Cin;
    assign Cout = (A & B) | (Cin & (A ^ B));

endmodule
```

## Truth Table

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

## Simulation Results

### ModelSim Output

<img width="1920" height="1140" alt="ModelSim output" src="https://github.com/user-attachments/assets/05617fda-2152-413b-88bb-88eef4e05e1b" />

### Waveform

<img width="1920" height="1140" alt="Waveform output" src="https://github.com/user-attachments/assets/a56c5c2a-1c9a-4b5b-98a3-05659fc4ec16" />

### VIVADO Run Output

<img width="1920" height="1140" alt="VIVADO output" src="https://github.com/user-attachments/assets/cff263c0-48fd-41c9-939a-6f5ed0f7b8cd" />

<img width="1920" height="1140" alt="VIVADO verification result" src="https://github.com/user-attachments/assets/7a6d268a-cc66-4879-894d-a4dad87185f0" />

## Summary

This exercise demonstrates the implementation and verification of a full adder in Verilog. It helps build a solid understanding of combinational logic design and digital circuit simulation.

## Tools Used

- Verilog HDL
- ModelSim
- Xilinx VIVADO
