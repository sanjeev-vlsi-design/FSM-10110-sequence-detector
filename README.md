# FSM-10110-sequence-detector
FSM for Sequence Detection: "10110"
This repository contains the Verilog implementation and simulation of a Finite State Machine (FSM) designed to detect the binary sequence "10110" in an input stream. The FSM is implemented with state diagrams and transitions that ensure reliable detection, including handling overlapping sequences.

Overview
A sequence detector is a specialized digital circuit that identifies a specific pattern in a continuous stream of binary data. This project focuses on detecting the sequence "10110", making it a perfect example to understand the practical use of FSMs in digital design.

Features
Pattern Detection: Detects the binary sequence "10110" in real-time.
Overlapping Support: Capable of detecting overlapping sequences.
FSM Models: Can be implemented using either the Moore or Mealy FSM models.
Synchronous Operation: Uses clock-driven transitions for reliable functionality.
FSM Design
States
The FSM progresses through a set of states, each representing a partial match of the sequence:

Idle State: Initial state with no match.
Partial Matches: Intermediate states corresponding to matched bits (e.g., "1", "10", "101").
Final State: Indicates that the full sequence "10110" has been detected.
State Transition Logic
Transitions occur on every clock cycle based on the current state and input.
The FSM resets to the appropriate state if a mismatch occurs during detection.
Inputs and Outputs
Inputs:
Data Input: The binary input stream to be analyzed.
Clock: Synchronizes state transitions.
Reset: Resets the FSM to the initial state.
Output:
Sequence Detected: A single-bit signal that is high (1) when "10110" is detected.
