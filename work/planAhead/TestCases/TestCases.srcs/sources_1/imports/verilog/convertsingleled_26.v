/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module convertsingleled_26 (
    input [1:0] in,
    output reg [2:0] out
  );
  
  
  
  always @* begin
    
    case (in)
      2'h0: begin
        out = 3'h0;
      end
      2'h1: begin
        out = 3'h1;
      end
      2'h2: begin
        out = 3'h4;
      end
      2'h3: begin
        out = 3'h2;
      end
      default: begin
        out = 3'h0;
      end
    endcase
  end
endmodule
