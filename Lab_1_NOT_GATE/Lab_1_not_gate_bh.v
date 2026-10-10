module Lab_1_not_gate_bh ( // Behavioral Style
    input a,              // Declares 'a' as an input port
    output reg y          // Declares 'y' as an output port. 'reg' is required here because it is assigned inside an 'always' block.
);
    always @(*) begin     // 'always' block that triggers whenever any of its input signals (*) change state.
        y = ~a;           // Performs a bitwise NOT operation on input 'a', assigning the result to 'y'.
    end
endmodule                 // Ends the module definition