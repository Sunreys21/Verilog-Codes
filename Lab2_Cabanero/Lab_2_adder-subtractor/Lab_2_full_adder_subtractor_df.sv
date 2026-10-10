//Dataflow Style for full adder subtractor
module Lab_2_full_adder_subtractor_df (
	input logic [3:0] A, B, 
	input logic Cin, Control,
	output logic [3:0] result,
	output logic Cout
);
	// Dataflow selection: Addition when ctrl=0, Subtraction when ctrl=1
	assign {Cout, result} = Control ? (A - B - Cin) : (A + B + Cin);
endmodule

	