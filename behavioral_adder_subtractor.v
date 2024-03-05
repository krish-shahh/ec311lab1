`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2024 07:59:28 PM
// Design Name: 
// Module Name: behavioral_adder_subtractor
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


module behavioral_adder_subtractor(
    input wire m,
    input wire [3:0] a,
    input wire [3:0] b,
    output reg [4:0] sum
    );
    
    wire [4:0] a5;
    wire [4:0] b5;
    
    assign a5 = {a[3], a};
    assign b5 = {b[3], b};
    
    always @(a, b, m) begin
        if (m == 0) begin
            sum = a5 + b5;
        end else begin
            sum = a5 - b5;
        end
    end
    
endmodule
