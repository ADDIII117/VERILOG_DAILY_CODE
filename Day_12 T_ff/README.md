# Day 12: T Flip-Flop (T-FF)

## Overview
A T Flip-Flop (Toggle Flip-Flop) is a sequential logic circuit that toggles its output on every active clock edge when the toggle input is enabled.

It is widely used in:
- counters
- frequency dividers
- clock division circuits
- state toggling applications

## Inputs and Outputs

### Inputs
- `T` — Toggle input
- `CLK` — Clock signal
- `RST` — Reset input (optional depending on design)

### Outputs
- `Q` — Output state
- `QB` — Complement of `Q`

## Working Principle
The T flip-flop operates as follows:

- If `T = 0` → output holds its previous value
- If `T = 1` and active clock edge occurs → output toggles

Mathematically:

- `Q(next) = Q ^ T`

This means the output changes state (from 0 to 1 or 1 to 0) when the toggle input is high and the clock event occurs.

## Behavior Summary

| T | Clock Edge | Q(next) | Action |
|---|---|---|---|
| 0 | Yes | Q | Hold |
| 1 | Yes | ~Q | Toggle |
| X | No | Q | No change |

## Applications
- Binary counters
- Clock divide-by-2 circuits
- Sequential control logic
- Frequency generation

## Simulation
The T flip-flop design was verified using simulation tools and waveform analysis.

![Simulation 1](https://github.com/user-attachments/assets/3b5b1103-3f36-4026-9472-781741adbd87)

![Simulation 2](https://github.com/user-attachments/assets/f7cc4fcd-04c4-4f18-bcbb-86510a1506b9)

![Simulation 3](https://github.com/user-attachments/assets/b0d4cb57-4386-498e-bf73-a4aa5789dac2)

![Simulation 4](https://github.com/user-attachments/assets/7164090f-9f56-4ac5-b261-bac96c79a264)

## Conclusion
The T Flip-Flop is a key component in sequential digital design. Its ability to toggle state on each clock pulse makes it highly useful in counters and timing circuits.

---

This README is part of the `VERILOG_DAILY_CODE` learning series focused on digital design and Verilog practice.
