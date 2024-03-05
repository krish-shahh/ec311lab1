`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/29/2024 08:35:38 PM
// Design Name: 
// Module Name: fourbit_adder_tb
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


module fourbit_adder_tb(

    );
    
    reg [3:0]a;
    reg [3:0]b;
    reg m;
    wire [3:0]sum;
    wire c_out, v;
    integer mm, i, j;
    fourbit_adder fadder(m, a, b, sum, c_out, v);
    
        
    initial
    begin
    a=0;b=0;m=0;

    #1;
    for (mm = 0; mm < 2; mm = mm+1) begin
        for (i = 0; i < 16; i = i+1) begin
            for (j = 0; j < 16; j = j+1) begin
                m = mm;
                a = i;
                b = j;
                #1;
            end        
        end
    end
    
    
    end
    
endmodule
