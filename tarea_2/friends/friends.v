`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 08:53:12
// Design Name: 
// Module Name: friends
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


module friends(
        input [2:0]a;
        output reg z;
    );
    always @(a)
        begin
            if(a== 3'b000) z=0;
            else if(a== 3'b001) z=0;
            else if(a== 3'b010) z=0;
            else if(a== 3'b011) z=1;
            else if(a== 3'b100) z=0;
            else if(a== 3'b101) z=1;
            else if(a== 3'b110) z=1;
            else if(a== 3'b111) z=1;
            else z=3'bX;
        end
endmodule
