//Behavioral Style for full adder subtractor
module Lab_2_full_adder_subtractor_bh (
	input logic [3:0] A, B, 
	input logic Cin, Control,
	output logic [3:0] result,
	output logic Cout
);
	always_comb begin
		// Procedural logic for configurable addition/subtraction
		if (Control)
			{Cout, result} = A - B - Cin;
		else
			{Cout, result} = A + B + Cin;
	end
endmodule
