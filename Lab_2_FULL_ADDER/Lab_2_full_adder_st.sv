// Structural (gate-level) modeling of a Full Adder
module Lab_2_full_adder_st (
    input logic a, b, cin,      // Input bits and carry-in
    output logic sum, cout      // Output sum and carry-out bits
);

    // Internal wire declarations
    wire xor1, and1, and2;      // Intermediate gate signals

    // Gate instantiations (Output, Input1, Input2)
    xor g1 (xor1, a, b);      
    xor g2 (sum, xor1, cin);  
    and g3 (and1, cin, xor1);  
    and g4 (and2, a, b);      
    or  g5 (cout, and1, and2);  

endmodule