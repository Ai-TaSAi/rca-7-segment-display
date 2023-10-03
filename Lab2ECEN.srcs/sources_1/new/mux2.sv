`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 11:50:30 AM
// Design Name: 
// Module Name: mux2
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


module mux2 #(parameter WIDTH = 4)(
    input [WIDTH-1:0] zero,
    input [WIDTH-1:0] one,
    input sel,
    output logic [WIDTH-1:0] mux_out
    );
    
    always_comb
    
    begin
    if (sel == 1)
        mux_out = one;
    else
        mux_out = zero;
    end
    
endmodule
