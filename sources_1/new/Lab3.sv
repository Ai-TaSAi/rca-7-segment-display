`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 01:03:54 PM
// Design Name: 
// Module Name: Lab3
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


module Lab3(
    input [3:0] A, // For RCA
    input [3:0] B, // For RCA
    output [6:0] seg,
    output [3:0] an
    );
    
    logic [3:0] S; // For RCA
    logic Co; // For RCA
    
    RCA RCA1 (.*);
    
    SevenSegment SS1 (.A(S), .SegOut(seg));
    
    mux2#(4) lab3mux (.zero(4'b1110), .one(4'b1111), .sel(Co), .mux_out(an));
endmodule
