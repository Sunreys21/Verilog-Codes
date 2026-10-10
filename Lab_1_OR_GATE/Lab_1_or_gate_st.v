module Lab_1_or_gate_st ( // Structural Style
    input a,              // Declares 'a' as an input port
    input b,              // Declares 'b' as an input port
    output y              // Declares 'y' as an output port
);
	
	w
    or or1 (y, a, b);     // Pre-defined OR gate into the module.
    
endmodule                 // Ends the module definition