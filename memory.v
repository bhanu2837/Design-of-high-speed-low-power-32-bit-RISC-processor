`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:02:46 04/28/2021 
// Design Name: 
// Module Name:    memory 
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
module memory(
    input [31:0] data,
    input [15:0] add,
    input mrd,mwr,rst,clk,
    output reg [31:0] mdata
    );


reg [31:0] mem [15:0];

always @(posedge clk)
begin

      if(rst)
		  begin
		  
		  mdata<=32'd0;
		  
		  end 
     else if(mwr) // load 
	     
		    mem[add]<=data;
	  
	  else if(mrd) // fetch 
	  
	       mdata <= mem[add];
	  
	  
end 

   

endmodule
