`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:52:57 06/04/2021 
// Design Name: 
// Module Name:    RISC 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module RISC ( input [31:0]A,B,input Asel,input [15:0]add ,input clk,rst, output [31:0]mdata, output [4:0] adpc
    );


wire [15:3] adir;
wire [2:0] opcode;

wire [31:0] acout;
wire  [31:0]  alout;

wire mrd,ld_pc,inc_pc,ld_IR,ldac,ALU_setup,mwr;


decoder                 d1 (clk ,rst,mrd,ld_pc,inc_pc,ld_IR,ldac,ALU_setup,mwr );
	 

program_counter        d2(clk,rst,ld_pc,inc_pc, adpc); 

instruction_register   d3( add, clk,ld_IR,rst,adir, opcode);


accumulator            d4( alout,A,clk,ldac,rst,Asel,acout);

arithmetic_logic_unit  d5 (ALU_setup,acout,B, opcode, clk,rst,alout);

memory                 d6 (alout,add,mrd,mwr,rst,clk, mdata);


endmodule
