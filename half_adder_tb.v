`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/29/2024 01:48:26 PM
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb(

    );
    
    reg a, b;
    wire sum, c_out;
    
    half_adder half(a, b, sum, c_out);
    
        
    initial
    begin
    a = 0; b = 0;
    #1 a=1;
    #1 b=1;
    #1 a=0;
    #1 $finish;
    end
    
endmodule
