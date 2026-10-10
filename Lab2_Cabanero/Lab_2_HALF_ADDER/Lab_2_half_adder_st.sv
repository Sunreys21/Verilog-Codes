// Structural (gate-level) modeling of a Half Adder
module Lab_2_half_adder_st (
    input logic a, b,       // Input bits
    output logic sum, cout // Output sum and cout bits
);

    // Gate instantiations (Output, Input1, Input2)
    xor sum_gate (sum, a, b);     // XOR gate generates sum
    and carry_gate (cout, a, b); // AND gate generates carry

endmodule