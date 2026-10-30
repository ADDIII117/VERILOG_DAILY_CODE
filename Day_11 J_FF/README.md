# Day 11: J-K Flip-Flop (J-K FF)

## Overview
A J-K Flip-Flop is a widely used bistable sequential logic device that stores one bit of data. It improves upon the SR flip-flop by resolving the invalid condition when both inputs are high.

The J and K inputs are analogous to Set and Reset, but with a more controlled behavior:
- `J = 1` and `K = 0` → set the output
- `J = 0` and `K = 1` → reset the output
- `J = 1` and `K = 1` → toggle the output
- `J = 0` and `K = 0` → hold the previous state

## Inputs and Outputs

### Inputs
- `J` — J input
- `K` — K input
- `CLK` — Clock signal
- `RST` or `CLR` — Reset signal (optional depending on implementation)

### Outputs
- `Q` — Stored output
- `QB` — Complement of Q

## Working Principle
The J-K flip-flop responds to the clock edge and updates its state based on the values of `J` and `K`.

### Behavior
- If `J = 0` and `K = 0` → hold
- If `J = 1` and `K = 0` → set
- If `J = 0` and `K = 1` → reset
- If `J = 1` and `K = 1` → toggle

This makes the J-K flip-flop more versatile than the SR flip-flop, because the `J = K = 1` case is valid and produces toggling behavior.

## Truth Table

| J | K | Q(next) | Operation |
|---|---|---|---|
| 0 | 0 | Q | Hold |
| 0 | 1 | 0 | Reset |
| 1 | 0 | 1 | Set |
| 1 | 1 | ~Q | Toggle |

## Key Characteristics
- Removes the invalid state present in SR flip-flop
- Used in counters, frequency dividers, and memory elements
- A fundamental building block in sequential digital systems

## Simulation
The J-K Flip-Flop was verified using ModelSim and waveform analysis.

![ModelSim Simulation](https://github.com/user-attachments/assets/6c0e7ef3-7c01-4b60-836b-799a59f8069f)

![Waveform Analysis](https://github.com/user-attachments/assets/39aa268c-781a-4674-8894-0316321f9274)

![Simulation Result](https://github.com/user-attachments/assets/70ba5c30-a020-4fe3-b9e7-877876319f97)

## Summary
The J-K Flip-Flop is one of the most important sequential logic circuits in digital design. It supports set, reset, hold, and toggle operations and is widely used in counters and control systems.

---

This README is part of the `VERILOG_DAILY_CODE` learning series focused on digital design and Verilog practice.
