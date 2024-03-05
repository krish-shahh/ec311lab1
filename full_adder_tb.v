`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/29/2024 02:12:32 PM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb(

    );
    
    reg a, b, c_in;
    wire sum, c_out;
    
    full_adder full(a, b, c_in, sum, c_out);
        
    initial
    begin
    a = 0;
    b = 0;
    c_in = 0;
    
    #10 a=0;
    #10 b=0;
    #10 c_in=1;
    #10 c_in=0;
    #10 c_in=1;b=1;
    #10 c_in=0;
    #10 c_in=1;a=1;
    #10 c_in=0;
    #10 c_in=1; b=0;
    #10 c_in=0;
    end
    
    
endmodule
