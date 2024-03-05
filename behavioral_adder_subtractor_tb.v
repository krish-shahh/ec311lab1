`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2024 08:03:03 PM
// Design Name: 
// Module Name: behavioral_adder_subtractor_tb
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


module behavioral_adder_subtractor_tb(

    );
    
    reg m;
    reg [3:0] a, b;
    wire [4:0] sum;
    
    behavioral_adder_subtractor uut (
        .m(m),
        .a(a),
        .b(b),
        .sum(sum)
    );
    
    initial begin
        m = 0; a = 4'd0; b = 4'd0;
        #100;
        
        m = 0; a = 4'd5; b = 4'd5;
        #10;
        
        m = 1; a = 4'b1010; b = 4'd1;
        #10;
        
        m = 0; a = 4'd2; b = 4'b1101;
        #10;
        
        m = 1; a = 4'd0; b = 4'd2;
        #10;
        
        m = 0; a = 4'b1011; b = 4'b1011;
        #10;
        
        m = 0; a = 4'b1011; b = 4'b1011;
        #10;
        
        #10;
    end
    
endmodule
