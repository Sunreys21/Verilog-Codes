// Dataflow modeling of a Half Adder
module Lab_2_half_adder_df (
    input logic a, b,       // Input bits
    output logic sum, cout // Output sum and cout bits
);

    // Continuous assignments
    assign sum = a ^ b;   // Sum = A XOR B
    assign cout = a & b; // Cout = A AND B

endmodule