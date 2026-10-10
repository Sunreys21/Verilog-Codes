module Lab_1_or_gate_bh ( //Behavioral Style
	input a,						//Declare input port 'a'
	input b,						//Declare input port 'b'
	output reg y				//Declares 'y' as an output port. 'reg' is required here because it is assigned inside an 'always' block.
);
	always @(*) begin			//'always' block that triggers whenever any of its input signals (*) change state.
		y = a | b;				// Performs a bitwise OR operation on inputs 'a' and 'b', assigning the result to 'y'.
	end
endmodule						//Ends the module definition