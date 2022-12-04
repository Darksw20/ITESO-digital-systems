`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2021 12:53:19
// Design Name: 
// Module Name: Fulladder_03
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


module Fulladder_03(
    input a,
    input b,
    input c,
    output Co,
    output S
    );
    assign Co = a&~b&~c+~a&~b&c+a&b&c+a&b&~c;
    assign S = a^b^c;
endmodule
