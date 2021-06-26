`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:29:13 06/05/2021
// Design Name:   RISC
// Module Name:   C:/Users/HOME/Desktop/projects VLSI O/major_project_programs/major_project_programs/RISC_TB.v
// Project Name:  major_project_programs
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RISC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RISC_TB;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg Asel;
	reg [15:0] add;
	reg clk;
	reg rst;

	// Outputs
	wire [31:0] mdata;

	// Instantiate the Unit Under Test (UUT)
	RISC uut (
		.A(A), 
		.B(B), 
		.Asel(Asel), 
		.add(add), 
		.clk(clk), 
		.rst(rst), 
		.mdata(mdata)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Asel = 0;
		add = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#20 rst=0;
		
		#10 A = 32'd12; B = 32'd14 ; Asel = 0 ;add = 3;
		#10 A = 32'd10; B = 32'd14 ; Asel = 0 ;add = 3;
		#10 A = 32'd15; B = 32'd14 ; Asel = 0 ;add = 3;
		#10 A = 32'd17; B = 32'd14 ; Asel = 0 ;add = 3;
		
		#10 A = 32'd12; B = 32'd14 ; Asel = 0 ;add = 3;
		#10 A = 32'd10; B = 32'd14 ; Asel = 0 ;add = 3;
		#10 A = 32'd15; B = 32'd14 ; Asel = 0 ;add = 3;
		#10 A = 32'd17; B = 32'd14 ; Asel = 0 ;add = 3;
		
        
		// Add stimulus here

	end
	
always #10 clk=~clk;	

initial begin


	$dumpfile ("RISC.vcd");
	$dumpvars (1,RISC_TB.uut);
	



end 



      
endmodule

