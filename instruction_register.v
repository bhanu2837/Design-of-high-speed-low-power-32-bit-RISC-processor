`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:14:16 04/27/2021 
// Design Name: 
// Module Name:    instruction_register 
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
module instruction_register(
    input [15:0] mdat,
    input clk,ldir,rst,
    output reg [15:3] adir,
    output reg [2:0] opcode
    );
always @(posedge clk)
begin
if (rst)
begin
 adir <= 5'b00000;
 opcode <= 3'b000;
end

else if (!rst && ldir)
begin
 adir <= mdat[15:3];
 opcode <= mdat[2:0];
end

end

endmodule
