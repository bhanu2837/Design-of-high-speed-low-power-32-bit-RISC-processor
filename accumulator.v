`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:10:07 04/27/2021 
// Design Name: 
// Module Name:    accumulator 
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
module accumulator(
    input [31:0] alout,
	 input [31:0]A,
    input clk,ldac,rst,
	 input Asel,
    output reg [31:0] acout
    );
always@ (posedge clk)
begin
if (rst)
begin
	acout <= 32'd0;
end
	
else if (ldac  && !rst) 
begin
	acout <= Asel ? alout : A;
end
end

endmodule
