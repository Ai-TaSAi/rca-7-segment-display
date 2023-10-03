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


module mux2Sim(
    );
    
    logic [3:0] zero = 4'b1110;
    logic [3:0] one = 4'b1111;
    logic sel;
    logic [3:0] mux_out;
    
    mux2#(4) Mux_Instance(.*);
    
    initial begin
        $display("Begin MuxSim");
        sel = 0;
        #10
        if (mux_out !== 4'b1110) $display("Error with sel:0, mux_out: %b", mux_out);
        sel = 1;
        #10
        if (mux_out !== 4'b1111) $display("Error with sel:1, mux_out: %b", mux_out);
        $display("End MuxSim");
    end
    
endmodule
