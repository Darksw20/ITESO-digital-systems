`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2022 13:09:00
// Design Name: 
// Module Name: BCD_4_8
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


module BCD_4_8(
    input [3:0]in,
    output reg [7:0]a
    );
    always @(in)
        begin
            if (in==4'b0000) out = 8'b00000000;
            else if (in==4'b0001) out = 8'b00000001;
            else if (in==4'b0010) out = 8'b00000010;
            else if (in==4'b0011) out = 8'b00000011;
            else if (in==4'b0100) out = 8'b00000100;
            else if (in==4'b0101) out = 8'b00000101;
            else if (in==4'b0110) out = 8'b00000110;
            else if (in==4'b0111) out = 8'b00000111;
            else if (in==4'b1000) out = 8'b00001000;
            else if (in==4'b1001) out = 8'b00001001;
            else if (in==4'b1010) out = 8'b00010000;
            else if (in==4'b1011) out = 8'b00010001;
            else if (in==4'b1100) out = 8'b00010010;
            else if (in==4'b1101) out = 8'b00010011;
            else if (in==4'b1110) out = 8'b00010100;
            else if (in==4'b1111) out = 8'b00010101;
            else out=7'bX;

        end

endmodule
