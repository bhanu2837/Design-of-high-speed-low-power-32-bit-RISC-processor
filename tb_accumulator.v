`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:16:06 04/27/2021
// Design Name:   accumulator
// Module Name:   F:/VHDL/PROGRAMS/major_project_programs/tb_accumulator.v
// Project Name:  major_project_programs
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: accumulator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_accumulator;

	// Inputs
	reg [7:0] alout;
	reg clk;
	reg idac;
	reg rst;

	// Outputs
	wire [7:0] acout;

	// Instantiate the Unit Under Test (UUT)
	accumulator uut (
		.alout(alout), 
		.clk(clk), 
		.idac(idac), 
		.rst(rst), 
		.acout(acout)
	);

	initial begin
		// Initialize Inputs
		alout = 0;
		clk = 0;
		idac = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		
		#100; alout = $random; clk = 0; idac = 1; rst = 1;
		#100; alout = $random; clk = 1; idac = 0; rst = 1;
		#100; alout = $random; clk = 1; idac = 1; rst = 0;
		#100; alout = $random; clk = 1; idac = 1; rst = 1;
		#100; alout = $random; clk = 1; idac = 1; rst = 1;
		#100; alout = $random; clk = 1; idac = 1; rst = 1;
		#100; alout = $random; clk = 1; idac = 1; rst = 1;
		#100; alout = $random; clk = 1; idac = 1; rst = 1;
		#100; alout = $random; clk = 1; idac = 1; rst = 1;
		#100; alout = $random; clk = 1; idac = 1; rst = 1;
		#100; alout = $random; clk = 1; idac = 1; rst = 1;
		
        
		// Add stimulus here

	end
      
endmodule

