module Lab_1_or_gate_df ( // Dataflow Style
    input a,              // Declares 'a' as an input port
    input b,              // Declares 'b' as an input port
    output y              // Declares 'y' as an output port (defaults to a 'wire' type)
);

    assign y = a | b;     // Continuously drives the output 'y' with the logical OR of 'a' and 'b'.
endmodule                 // Ends the module definition