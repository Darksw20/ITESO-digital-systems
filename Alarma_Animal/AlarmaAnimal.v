`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2021 12:20:51
// Design Name: 
// Module Name: AlarmaAnimal
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


module AlarmaAnimal(
    input m,
    input ta,
    input tb,
    output alarma
    );
    
    assign alarma = (m&ta)|tb;
endmodule
