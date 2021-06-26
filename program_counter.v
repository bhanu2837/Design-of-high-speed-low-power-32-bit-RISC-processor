`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:59:37 05/23/2021 
// Design Name: 
// Module Name:    program_counter 
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
module program_counter(
    input pclk,rst,ld_pc,inc_pc,
    output reg [4:0] adpc
    );

	//wire mdat;
	

	
	always@ (posedge pclk)
	begin
	
	         if (rst && !ld_pc)
		
	        		adpc <= 5'b00000;
		
		
			      else
					  begin
					     if(inc_pc)
						    adpc<=adpc+1'b1;
						  else
						    adpc<=adpc;
						  
						   
				    end 
	end

endmodule
