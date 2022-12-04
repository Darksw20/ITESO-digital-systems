`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 08:53:12
// Design Name: 
// Module Name: display_7_seg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module display_7_seg(
        input [2:0]in,
        output [6:0]out
    );
    assign out = (in==4'b000) ? 7'b1000000:
        (in==4'b001) ? 7'b1111001:
        (in==4'b010) ? 7'b0100100:
        (in==4'b011) ? 7'b0110000:
        (in==4'b100) ? 7'b0011001:
        (in==4'b101) ? 7'b0010010:
        (in==4'b110) ? 7'b0000010:
        (in==4'b111) ? 7'b1111000:7'b1111111;
endmodule