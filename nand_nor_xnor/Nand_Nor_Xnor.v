`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2021 09:29:30
// Design Name: 
// Module Name: Nand_Nor_Xnor
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


module Nand_Nor_Xnor(
    input a,
    input b,
    output y_nand,
    output y_nor,
    output y_xnor
    );
    
assign y_nand = !(a&b);
assign y_nor = !(a|b);
assign y_xnor = !((a|(a|b))|((a|b)|b));
endmodule
