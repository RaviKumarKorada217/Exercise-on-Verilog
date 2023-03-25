module top_module( 
    input a, 
    input b, 
    output out );
    
  nor g(out,a,b);   //assign out = a~|b;

endmodule
