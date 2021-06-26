`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:30:01 05/21/2021 
// Design Name: 
// Module Name:    arithmetic_logic_unit 
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
module arithmetic_logic_unit(
    input start,
    input [31:0] acout,
	 input [31:0] B_in,
    input [2:0] opcode,
    input clk,rst,
    output reg [31:0]  alout
    
    );
	 
	 reg [5:0]ad;
	
	 
	 reg [5:0]temp;
	 
	 always@(posedge clk)
	
	 begin		
	           if (rst && !start )
				     begin
				  			
		           	alout <= 32'd0;
                 
                   end 						
     	       else  
			   begin
				
				   case({opcode})
				
				     3'b000:  begin alout <= 32'b0; end
				     3'b001:  begin
					              temp <= B_in[0]+B_in[1]+B_in[2]+B_in[3]+B_in[4]+
									          B_in[5]+B_in[6]+B_in[7]+B_in[8]+B_in[9]+
												 B_in[10]+B_in[11]+B_in[12]+B_in[13]+B_in[14]+
												 B_in[15]+B_in[16]+B_in[17]+B_in[18]+B_in[19]+
												 B_in[20]+B_in[21]+B_in[22]+B_in[23]+B_in[24]+
												 B_in[25]+B_in[26]+B_in[27]+B_in[28]+B_in[29]+
												 B_in[30]+B_in[31];
									   
                               case(temp)
                               
                                   
                               6'd0  : alout<=32'h00000000;
										 6'd1  : alout<=32'h00000001;
										 6'd2  : alout<=32'h00000003;
										 6'd3  : alout<=32'h00000007;
										 6'd4  : alout<=32'h0000000f;
										 6'd5  : alout<=32'h0000001f;
										 6'd6  : alout<=32'h0000003f;
										 6'd7  : alout<=32'h0000007f;
										 6'd8  : alout<=32'h000000ff;
										 6'd9  : alout<=32'h000001ff;
										 6'd10 : alout<=32'h000003ff;
										 6'd11 : alout<=32'h000007ff;
										 6'd12 : alout<=32'h00000fff;
										 6'd13 : alout<=32'h00001fff;
										 6'd14 : alout<=32'h00003fff;
										 6'd15 : alout<=32'h00007fff;
										 6'd16 : alout<=32'h0000ffff;
										 6'd17 : alout<=32'h0001ffff;
										 6'd18 : alout<=32'h0003ffff;
										 6'd19 : alout<=32'h0007ffff;
										 6'd20 : alout<=32'h000fffff;
										 6'd21 : alout<=32'h001fffff;
										 6'd22 : alout<=32'h003fffff;
										 6'd23 : alout<=32'h007fffff;
										 6'd24 : alout<=32'h00ffffff;
										 6'd25 : alout<=32'h01ffffff;
										 6'd26 : alout<=32'h03ffffff;
										 6'd27 : alout<=32'h07ffffff;
										 6'd28 : alout<=32'h0fffffff;
										 6'd29 : alout<=32'h1fffffff;
										 6'd29 : alout<=32'h3fffffff;
										 6'd30 : alout<=32'h7fffffff;
										 6'd31 : alout<=32'hffffffff;
                               							
										  
										  
										  
										  
										  endcase										  
												 
									
									end
    								
				     3'b010: begin  alout <= acout + B_in; end
				     3'b011: begin  alout <= acout - B_in; end
				     3'b100: begin  alout <= acout | B_in; end
				     3'b101: begin  alout <= acout & B_in; end
				     3'b110: begin  alout <= acout ^ B_in; end
				     3'b111: begin alout <= alout; end  // store example 
					  
					  
					  // jump =101
				
					endcase
				
				end
			
			
	 
	 
end
endmodule
