module Lab_1_NOR_gate_bh ( // Behavioral Style
    input a,               // Declares 'a' as an input port
    input b,               // Declares 'b' as an input port
    output reg y           // Declares 'y' as an output port. 'reg' is required here because it is assigned inside an 'always' block.
);
    always @(*) begin      // 'always' block that triggers whenever any of its input signals (*) change state.
        y = ~(a | b);      // Performs a bitwise NOR operation on inputs 'a' and 'b', assigning the result to 'y'.
    end
endmodule                  // Ends the module definition