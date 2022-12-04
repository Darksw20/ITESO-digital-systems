`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2022 13:09:00
// Design Name: 
// Module Name: display_4_7
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


module display_4_7(
    input [3:0]in,
    output reg [6:0]a
    );
    always @(in)
        begin
            if (in==4'b0000) out = 7'b0000001;
            else if (in==4'b0001) out = 7'b1001111;
            else if (in==4'b0010) out = 7'b0010010;
            else if (in==4'b0011) out = 7'b0000110;
            else if (in==4'b0100) out = 7'b1001100;
            else if (in==4'b0101) out = 7'b0100100;
            else if (in==4'b0110) out = 7'b0100000;
            else if (in==4'b0111) out = 7'b0001111;
            else if (in==4'b1000) out = 7'b0000000;
            else if (in==4'b1001) out = 7'b0000100;
            else if (in==4'b1010) out = 7'b0001000;
            else if (in==4'b1011) out = 7'b1100000;
            else if (in==4'b1100) out = 7'b0110001;
            else if (in==4'b1101) out = 7'b1000010;
            else if (in==4'b1110) out = 7'b0110000;
            else if (in==4'b1111) out = 7'b0111000;
            else out=7'bX;
        end

endmodule
