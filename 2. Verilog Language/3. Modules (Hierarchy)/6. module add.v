/* The provided module add16 has the following declaration:

module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );    */

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cin=0, c1, cout;
    add16 addLOW  (a[15:0], b[15:0], cin, sum[15:0], c1);
    add16 addHIGH (a[31:16], b[31:16], c1, sum[31:16], cout);

endmodule
