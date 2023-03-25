module top_module( 
    input a, 
    input b, 
    output out );
    
  assign out=a~^b;  // xnor g(out,a,b);

endmodule
