`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:29:34 08/15/2013 
// Design Name: 
// Module Name:    one_cold_2b_coder 
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
module one_cold_2b_coder (
  input      [1:0] din,
  input            en,
  output reg [3:0] dout
);
  
  always @ * begin
    // default value
    dout = 4'b1111;
    if (en)
      case (din)
        2'd0 : dout = 4'b1110; 
        2'd1 : dout = 4'b1101;
        2'd2 : dout = 4'b1011;
        2'd3 : dout = 4'b0111;
      endcase
  end
  
endmodule