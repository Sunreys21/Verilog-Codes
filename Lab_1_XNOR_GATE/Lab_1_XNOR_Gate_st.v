module Lab_1_XNOR_Gate_st ( // Structural Style
    input a,                // Declares 'a' as an input port
    input b,                // Declares 'b' as an input port
    output y                // Declares 'y' as an output port
);

    xnor xor1 (y, a, b);    // Pre-defined XNOR gate into the module.

endmodule                   // Ends the module definition