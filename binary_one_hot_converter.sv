`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2023 09:40:51 PM
// Design Name: 
// Module Name: binary_one_hot_converter
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


module binary_one_hot_converter#(
  parameter BIN_W       = 4,
  parameter ONE_HOT_W   = 16)
  
  (input   wire[BIN_W-1:0]     bin,
  output  wire[ONE_HOT_W-1:0] one_hot);

  assign one_hot = 1'b1<<bin;
  
endmodule
