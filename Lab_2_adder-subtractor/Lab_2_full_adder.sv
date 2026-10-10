//Full Adder Helper Component

module Lab_2_full_adder (
	input logic a, b, cin,
	output logic sum, cout
);

	wire xor1, and1, and2;

	xor g1 (xor1, a, b);
	xor g2 (sum, xor1, cin);
	and g3 (and1, xor1, cin);
	and g4 (and2, a, b);
	or  g5 (cout, and1, and2);
	
endmodule
		