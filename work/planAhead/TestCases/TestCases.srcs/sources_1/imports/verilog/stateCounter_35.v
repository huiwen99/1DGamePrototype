/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module stateCounter_35 (
    input clk,
    input rst,
    input [15:0] score,
    output reg inc_state
  );
  
  
  
  reg [27:0] M_stateCounter_d, M_stateCounter_q = 1'h0;
  
  always @* begin
    M_stateCounter_d = M_stateCounter_q;
    
    inc_state = M_stateCounter_q[27+0-:1];
    M_stateCounter_d = M_stateCounter_q + 3'h5 + (score / 4'h9);
    if (M_stateCounter_q[27+0-:1] == 1'h1) begin
      M_stateCounter_d[27+0-:1] = 1'h0;
    end
  end
  
  always @(posedge clk) begin
    M_stateCounter_q <= M_stateCounter_d;
  end
  
endmodule
