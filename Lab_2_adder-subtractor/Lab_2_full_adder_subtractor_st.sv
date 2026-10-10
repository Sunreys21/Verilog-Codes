//Structural Style for full adder subtractor
module Lab_2_full_adder_subtractor_st (
    input logic [3:0] A, B,
    input logic Cin, Control,
    output logic [3:0] result,
    output logic Cout
);
    wire [3:0] b_xor;
    wire c1, c2, c3;
    wire c0 = Control ^ Cin;

    // XOR gates to conditionally invert B in subtraction mode
    xor (b_xor[0], B[0], Control);
    xor (b_xor[1], B[1], Control);
    xor (b_xor[2], B[2], Control);
    xor (b_xor[3], B[3], Control);

    // Ripple Carry Full Adder Chain
    Lab_2_full_adder fa0 (A[0], b_xor[0], c0,   result[0], c1);
    Lab_2_full_adder fa1 (A[1], b_xor[1], c1,   result[1], c2);
    Lab_2_full_adder fa2 (A[2], b_xor[2], c2,   result[2], c3);
    Lab_2_full_adder fa3 (A[3], b_xor[3], c3,   result[3], Cout);
endmodule