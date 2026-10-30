# Day 04 - 4-bit Ripple Carry Adder

This project implements a 4-bit ripple carry adder in Verilog. The design uses a chain of full adders, where each stage adds one bit of the operands and propagates the carry to the next stage.

## Overview

- Inputs: `A[3:0]`, `B[3:0]`, `Cin`
- Outputs: `Sum[3:0]`, `Cout`
- Design style: structural Verilog using interconnected full adders
- Purpose: to verify addition behavior, carry propagation, and synthesis results

## Functional Behavior

The ripple carry adder performs binary addition as follows:

A + B + Cin = Sum + Cout

Each bit stage computes:

- sum bit = A[i] XOR B[i] XOR carry_in
- carry_out = (A[i] & B[i]) | (carry_in & (A[i] XOR B[i]))

This creates a simple and scalable adder architecture suitable for learning digital logic design.

## Simulation Run / Output Match

The simulation waveform confirms that the generated output matches the expected arithmetic result for multiple test cases.

![Simulation run / output match](https://github.com/user-attachments/assets/91f2088f-9cd0-4c0c-b653-955d12a47ef4)

## Schematic Diagram (Generated in Vivado)

The synthesized RTL was visualized in Vivado to verify the structural implementation of the ripple carry adder.

![Schematic diagram generated on Vivado](https://github.com/user-attachments/assets/ac6ec76b-31d2-44de-ba31-e39006389f74)

## Netlist and Power Summary

The generated netlist and power analysis provide additional implementation details and resource usage information.

![Netlist and summary of power](https://github.com/user-attachments/assets/42d134c1-e6ba-402a-b813-88d6d914d685)

## Result

The design successfully demonstrates correct addition behavior, proper carry propagation, and a valid implementation flow in Vivado.
