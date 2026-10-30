# Day 10: SR Flip-Flop (SR-FF)

## Overview
An SR Flip-Flop, also known as a Set-Reset Flip-Flop, is a basic sequential logic element used to store one bit of information.

It has two inputs:
- `S` → Set
- `R` → Reset

It produces two outputs:
- `Q` → Stored state output
- `Qb` → Complement of `Q`

The SR flip-flop is widely used in latch and memory-based digital systems.

## Inputs and Outputs

### Inputs
- `S` — Set input
- `R` — Reset input
- `CLK` — Clock signal (optional depending on implementation)

### Outputs
- `Q` — Output state
- `Qb` — Inverted output state

## Working Principle
The SR flip-flop changes its state based on the inputs:

- If `S = 1` and `R = 0` → output is set to `Q = 1`
- If `S = 0` and `R = 1` → output is reset to `Q = 0`
- If `S = 0` and `R = 0` → output holds its previous state
- If `S = 1` and `R = 1` → invalid or undefined state in a basic SR latch

## Truth Table

| S | R | Q (next) | Qb (next) | Description |
|---|---|---|---|---|
| 0 | 0 | Q | Qb | Hold |
| 0 | 1 | 0 | 1 | Reset |
| 1 | 0 | 1 | 0 | Set |
| 1 | 1 | X | X | Invalid / Not allowed |

## Key Concept
The SR flip-flop is one of the simplest memory elements in digital electronics. It stores binary information and is the base for more advanced sequential circuits such as latches and registers.

## Simulation
The design can be tested in tools like ModelSim or Vivado.

![SR Flip-Flop Overview](https://github.com/user-attachments/assets/efbf8a7c-a67d-4959-810a-e5e340b359a0)

![SR Flip-Flop Waveform](https://github.com/user-attachments/assets/bf923157-b0b3-42d3-9928-9601e62a4180)

![SR Flip-Flop Simulation Result](https://github.com/user-attachments/assets/bd2c280e-1c68-46e1-bfba-be66b8218b7c)

## Summary
The SR Flip-Flop is a basic memory device that responds to Set and Reset commands. It forms the foundation for more complex sequential logic circuits and is an important concept in digital design and Verilog.

---

This README is part of the `VERILOG_DAILY_CODE` learning series for digital design practice.
