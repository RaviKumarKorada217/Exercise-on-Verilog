//Given an 8-bit input vector [7:0], reverse its bit ordering.

module top_module( 
    input [7:0] in,
    output [7:0] out
);
    assign out[7:0]={in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7]};
  
  //assign {out[0],out[1],out[2],out[3],out[4],out[5],out[6],out[7]} = in;

endmodule
