`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 01:01:37 PM
// Design Name: 
// Module Name: RCA
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


module RCA(
    input [3:0] A,
    input [3:0] B,
    output [3:0] S,
    output Co
    );
    
    logic t1, t2, t3;
    
    HA HA0 ( .A(A[0]), .B(B[0]), .Co(t1), .S(S[0]) );
    FA FA1 ( .A(A[1]), .B(B[1]), .Cin(t1), .S(S[1]), .Co(t2) );
    FA FA2 ( .A(A[2]), .B(B[2]), .Cin(t2), .S(S[2]), .Co(t3) );
    FA FA3 ( .A(A[3]), .B(B[3]), .Cin(t3), .S(S[3]), .Co(Co) );
    
endmodule
