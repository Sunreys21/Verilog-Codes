// Behavioral modeling of a Full Adder
module Lab_2_full_adder_bh (
    input logic a, b, cin,      // Input bits and carry-in
    output logic sum, cout      // Output sum and carry-out bits
);

    // Combinational logic block
    always_comb begin
        sum  = a ^ b ^ cin;               // Sum is XOR of all inputs
        cout = (a & b) | (cin & (a ^ b)); // Carry-out logic expression
    end

endmodule