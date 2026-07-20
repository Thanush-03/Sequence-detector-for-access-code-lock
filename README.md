# Sequence-detector-for-access-code-lock

Verilog Moore FSM Sequence Detector with simulation and synthesis using open-source tools.

## Overview

This project implements a Moore Finite State Machine (FSM) in Verilog to detect the binary sequence **1001**. When the correct sequence is detected, the `unlock` signal is asserted.

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys
- Ubuntu (WSL)

## Files

- sequence_detect.v - RTL design
- sequence_detect_tb.v - Testbench
- synth.ys - Yosys synthesis script
- sequence_detect_synth.v - Synthesized netlist

## Simulation

- iverilog -o sequence_detect_sim sequence_detect.v sequence_detect_tb.v
- vvp sequence_detect_sim
- gtkwave sequence_detect.vcd


## Synthesis

- yosys synth.ys

## Project Structure

sequence-detector-access-code-lock
├── README.md
├── sequence_detect.v
├── sequence_detect_tb.v
├── synth.ys
├── sequence_detect_synth.v
└── images
    ├── gtkwave.png
    └── netlist schematic.png
