`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/29/2024 08:26:30 PM
// Design Name: 
// Module Name: fourbit_adder
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


module fourbit_adder(
    input m,
    input [3:0] a,
    input [3:0] b,
    output [3:0] sum,
    output c_out,
    output v
    );
    
    wire c1, c2, c3, c4;
    
    full_adder g1(.c_in(m), .a(a[0]), .b(b[0]), .sum(sum[0]), .c_out(c1));
    full_adder g2(.c_in(c1), .a(a[1]), .b(b[1]), .sum(sum[1]), .c_out(c2));
    full_adder g3(.c_in(c2), .a(a[2]), .b(b[2]), .sum(sum[2]), .c_out(c3));
    full_adder g4(.c_in(c3), .a(a[3]), .b(b[3]), .sum(sum[3]), .c_out(c4));
    
    xor g5(v, c4, c3);
    
    assign c_out = c4;
    
endmodule
