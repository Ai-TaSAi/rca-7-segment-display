`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 11:53:26 AM
// Design Name: 
// Module Name: mux2Sim
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


module SevenSegmentSim(
    
    );
    
    logic [3:0] A;
    logic [6:0] SegOut;
    
    SevenSegment SevSeg_Instance(.*);
    
    initial
        begin
        
        for (int i = 0; i < 16; i++)
        begin
            A = i;
            #10;
        end
    end
    
endmodule
