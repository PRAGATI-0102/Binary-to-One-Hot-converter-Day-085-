`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2023 09:42:54 PM
// Design Name: 
// Module Name: Testbench
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


module Testbench();

  localparam BIN_W = 4;
  localparam ONE_HOT_W = 16;

  logic [BIN_W-1:0] bin;
  logic [ONE_HOT_W-1:0] one_hot;

  binary_one_hot_converter #(BIN_W, ONE_HOT_W) dut (.*);

  initial 
  begin
    for(int i=0; i<32; i=i+1) 
    begin
      bin = $urandom_range(0, 4'hF);
      #5;
    end
    $finish();
  end
endmodule
