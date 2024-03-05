`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/29/2024 02:03:30 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input c_in,
    input a,
    input b,
    output sum,
    output c_out
    );
    
    wire w1, w2, w3;
    
    half_adder G1(a, b, w1, w2);
    half_adder G2(c_in, w1, sum, w3);
    or G3(c_out, w2, w3);
    
endmodule
