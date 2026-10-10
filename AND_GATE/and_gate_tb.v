// 1. Timescale Directive
`timescale 1ns / 1ps

// 2. Module Declaration (no ports)
module and_gate_tb;

		// 3. Signal Declarations
		reg a, b; // Inputs to DUT are 'reg'
		wire y; // Outputs from DUT are 'wire'
		
		// 4. Instantiate the Design Under Test (DUT)
		and_gate_df dut (
					.a(a),
					.b(b),
					.y(y)
					);
		
		// 5. Stimulus and Verification Block
		initial begin
		
		// A. Setup waveform dumping for GTKWave
		$dumpfile("and_gate_tb.vcd");
		$dumpvars(0, and_gate_tb);
		
		// B. (Optional) Monitor console output
		$monitor("Time=%0t ns | a=%b b=%b | y=%b", $time, a, b, y);
		
		// C. Apply test vectors (stimuli)
		a = 0; b = 0; #10; // Wait 10ns
		a = 0; b = 1; #10;
		a = 1; b = 0; #10;
		a = 1; b = 1; #10;
		
		// D. End the simulation
		$finish;
	end
endmodule