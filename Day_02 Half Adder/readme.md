A half adder is a basic digital circuit that adds two single-bit binary inputs and produces two outputs: a Sum (via XOR gate) and a Carry (via AND gate). It’s called “half” because it cannot handle a carry-in from a previous stage, so it’s only suitable for the first step of multi-bit addition.

How a Half Adder Works
Inputs: Two single-bit binary numbers (A and B).

Outputs:

Sum = A ⊕ B (XOR gate)

Carry = A · B (AND gate)






📝 Explanation
Inputs: a, b (single-bit values)

Outputs:

sum → XOR of inputs

carry → AND of inputs

Truth table


| a | b | sum | carry |
| --- | --- | --- | --- |
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |





Schematic Diagram Generated on Vivado  
<img width="1920" height="1140" alt="Screenshot 2026-08-27 131310" src="https://github.com/user-attachments/assets/66733498-dbd3-4fc1-a19e-67f10baf6814" />

Transcript output on ModelSim 
<img width="797" height="593" alt="Screenshot 2026-08-27 132126" src="https://github.com/user-attachments/assets/633d2bf4-d35f-4d88-99e4-48d22ec9fa6f" />
