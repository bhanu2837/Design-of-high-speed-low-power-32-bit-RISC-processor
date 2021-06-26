`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:57:25 05/24/2021 
// Design Name: 
// Module Name:    io_buffer 
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
module io_buffer(
    input mrd,fetch,clk2,
    output reg [7:0] mdat
    );
	
	reg en,en1;
	
	reg zzzzzzzz;
	
	reg [7:0] alout;
	
	wire clk;
	
	always@ (posedge clk)
	begin
	
		assign en = (mrd|fetch|clk2);
		assign en1 = ~(en);
	
			if (en1 == 1)
			
				mdat <= alout;
				
					else 
					
						mdat <= zzzzzzzz;
	
	end
	


endmodule
