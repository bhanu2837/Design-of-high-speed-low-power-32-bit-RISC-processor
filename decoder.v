`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:46:05 05/25/2021 
// Design Name: 
// Module Name:    decoder 
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
module decoder(
    input clk ,rst,
    output reg MRd,ld_pc,Inc_pc,ld_IR,Ld_acc,ALU_setup,Mwr
    );
	 
	 
	 
// fetch , load ,execute ,store 	 
	 
	 reg [2:0]count;
	 
	 always@ (posedge clk)
	 begin
	        if(rst)
              begin
				       count<=1'b0;
				  end 
            				
	         else
               begin
                    count<=count+1'b1;
                       case (count)
							   3'b001 : begin MRd<=1'b1;
								               ld_pc<=1'b0;
													Inc_pc<=1'b0;
													ld_IR<=1'b0;
													Ld_acc<=1'b0;
													ALU_setup<=1'b0;
													Mwr<=1'b0;
							              end
								3'b010 : begin MRd<=1'b0;
								               ld_pc<=1'b1;
													Inc_pc<=1'b0;
													ld_IR<=1'b0;
													Ld_acc<=1'b0;
													ALU_setup<=1'b0;
													Mwr<=1'b0;
							              end			  
											  
								3'b011 : begin MRd<=1'b0;
								               ld_pc<=1'b0;
													Inc_pc<=1'b1;
													ld_IR<=1'b0;
													Ld_acc<=1'b0;
													ALU_setup<=1'b0;
													Mwr<=1'b0;
							              end			 			  
											  
								3'b100 : begin MRd<=1'b0;
								               ld_pc<=1'b0;
													Inc_pc<=1'b0;
													ld_IR<=1'b1;
													Ld_acc<=1'b0;
													ALU_setup<=1'b0;
													Mwr<=1'b0;
							              end			 			  
								3'b101 : begin MRd<=1'b0;
								               ld_pc<=1'b0;
													Inc_pc<=1'b0;
													ld_IR<=1'b0;
													Ld_acc<=1'b1;
													ALU_setup<=1'b0;
													Mwr<=1'b0;
							              end			 
                        3'b110 : begin MRd<=1'b0;
								               ld_pc<=1'b0;
													Inc_pc<=1'b0;
													ld_IR<=1'b0;
													Ld_acc<=1'b0;
													ALU_setup<=1'b1;
													Mwr<=1'b0;
							              end			 											  
                        3'b111 : begin MRd<=1'b0;
								               ld_pc<=1'b0;
													Inc_pc<=1'b0;
													ld_IR<=1'b0;
													Ld_acc<=1'b0;
													ALU_setup<=1'b0;
													Mwr<=1'b1;
							              end		
											  
							endcase				  
											  
               end 					
	 
	                 
	 
	 end


endmodule
