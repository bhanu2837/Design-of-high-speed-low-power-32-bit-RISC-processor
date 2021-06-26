# Design-of-high-speed-low-power-32-bit-RISC-processor
This project presents the accomplishment of depleted power 32-bit RISC (reduced instruction set computer) processor.
RISC is a design technique used to reduce the amount of area required, complexity of instruction set, instruction cycle and cost during the implementation of the design.
This dissertation presents a 32-bit RISC processor design using Verilog Hardware. Description Language (HDL) on FPGA board. 
The processor using MIPS architecture with five-stage pipelining. 
Intention of the RISC processor is to do small set of instruction in order to enhance the processor speed. 
It includes five pipeline stages; they are instruction fetch (IF), instruction decode (ID), execution (EX), memory access (MEM) and write back (WB) stages. 
Different sub-blocks employed are data memory (DM), register file, ALU.
The proposed processor is designed using Harvard architecture, having separate instruction and data memory. 
The salient feature of proposed processor is pipelining, used for improving performance, such that on every clock cycle one instruction will be executed. 
Another important feature is that instruction set contains only few instructions, which is very simple, easy to learn and compact. 
The proposed processor has 32-bit ALU, two 32-bit I/O ports, serial-in/serial- out ports, eight 8-bit general-purpose registers, 4-bit flag register and priority based three interrupts. 
In RTL coding one can reduce the dynamic power by using clock- gating technique, is used for specific modules that will be clocked only when corresponding control signals are enabled. 
The proposed processor is verified on Xilinx.
Develops and implements a 32-bit Reduced Instruction Set Computer (RISC). 
The processor can execute with simplified design for more number of instructions and obtained less critical path delay. 
The proposed processor will be implemented and synthesized using Xilinx. 
The proposed processor consists of the different blocks mainly accumulator, decoder, instruction register, ALU, memory, program counter and multiplexer. 
The functional verification takes place in Xilinx tool suit. RISC processors have a very large range of applications based on power consumption and speed.
