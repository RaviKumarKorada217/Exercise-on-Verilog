module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum,
    output cout
);
    wire cin, c1, cout1, cout2;
    wire [15:0] sum1, sum2;
    add16 M1( a[15:0], b[15:0], cin, sum[15:0], c1);
    
    add16 M2( a[31:16], b[31:16], 1'b0, sum1, cout1);
    add16 M3( a[31:16], b[31:16], 1'b1, sum2, cout2);
    
    always@(*)
    if(c1==1'b1) begin
        sum[31:16] = sum2;
        cout = cout2;
    end
    else begin
        sum[31:16] = sum1;
        cout = cout1;
    end

endmodule

/* The provided module add16 has the following declaration:

  module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout ); */
