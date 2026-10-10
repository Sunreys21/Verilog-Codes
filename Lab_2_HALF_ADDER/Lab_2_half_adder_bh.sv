// Behavioral modeling of a Half Adder
module Lab_2_half_adder_bh (
    input logic a, b,       // Input bits
    output logic sum, cout // Output sum and cout bits
);

    // Combinational logic block
    always_comb begin
        sum = a ^ b;   // Sum is XOR of inputs
        cout = a & b; // Cout is AND of inputs
    end

endmodule