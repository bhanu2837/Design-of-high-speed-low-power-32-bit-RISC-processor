`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:02:53 04/28/2021 
// Design Name: 
// Module Name:    clock_generator 
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
module clock_generator(
    input clk,rstreq,
    output reg clk1,clk2,fetch,rst
    );

	always@ (posedge clk)
	begin
	
	if (rstreq == 1)
		begin
		
		clk1 <= 0;
		clk2 <= 0;
		fetch <= 0;
		rst <= 0;
		
		end
		
			else
				begin
				
				assign clk1 = clk;
				
				assign clk2 = ~clk;
				
				assign fetch = clk2;
				
				if (fetch == 1)
				
					assign rst = 1;
					
				end

	end

endmodule
