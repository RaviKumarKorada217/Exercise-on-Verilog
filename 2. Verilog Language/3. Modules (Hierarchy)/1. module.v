
module top_module ( input a, input b, output out );
  
    mod_a M(a,b,out);

endmodule

module mod_a ( input in1, input in2, output out );
    // Module body
    assign out=in1&in2;
endmodule
