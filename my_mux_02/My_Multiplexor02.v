`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2021 12:26:41
// Design Name: 
// Module Name: My_Multiplexor02
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


module My_Multiplexor02(
    input a,
    input b,
    input sel,
    output y
    );
assign y = (b&sel) | (a&~sel);    

endmodule
