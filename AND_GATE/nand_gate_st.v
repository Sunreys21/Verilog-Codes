module and_gate_st (
			input a,
			input b,
			output y
);
			wire and_out;
			and_gate and1 (a, b, and_out);
			not_gate not1 (and_out, y);
endmodule