`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:34:23 05/23/2021 
// Design Name: 
// Module Name:    multiplexer 
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
module multiplexer(
    input [4:0] adir,
    input [4:0] adpc,
    input fetch,clk,
    output reg [4:0] admem
    );

	always@ (posedge clk)
	begin
	
		if (fetch == 0)
			admem <= clk;
		else
			admem <= adpc;
			
	end

endmodule
