`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:08:35 04/27/2021
// Design Name:   instruction_register
// Module Name:   F:/VHDL/PROGRAMS/major_project_programs/tb_instruction_register.v
// Project Name:  major_project_programs
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: instruction_register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_instruction_register;

	// Inputs
	reg [7:0] mdat;
	reg clk;
	reg ldir;
	reg rst;

	// Outputs
	wire [4:0] adir;
	wire [2:0] opcode;

	// Instantiate the Unit Under Test (UUT)
	instruction_register uut (
		.mdat(mdat), 
		.clk(clk), 
		.ldir(ldir), 
		.rst(rst), 
		.adir(adir), 
		.opcode(opcode)
	);

	initial begin
		// Initialize Inputs
		mdat = 0;
		clk = 0;
		ldir = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#200;
      ldir = 1;
		rst = 1;
		// Add stimulus here

	end
      
always #100 clk = ~clk;

always #100 mdat = mdat+1'b1; //always #10 mdat = ~mdat // onebit

endmodule

