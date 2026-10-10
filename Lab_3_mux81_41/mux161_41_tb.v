`timescale 1ns / 1ps
module mux161_41_tb;

    reg [15:0] in;
    reg s3, s2, s1, s0;
    wire y;

    mux161_41_st dut (
        .in(in),
        .s3(s3), .s2(s2), .s1(s1), .s0(s0),
        .y(y)
    );

    integer i;

    initial begin
        $dumpfile("mux161_41_tb.vcd");
        $dumpvars(0, mux161_41_tb);

        $display("Time | s3 s2 s1 s0 | Output Y");
        $display("----------------------------");
        $monitor("%4t |    %b  %b  %b  %b |    %b", $time, s3, s2, s1, s0, y);

        in = 16'b1010_1010_1010_1010;

        for (i = 0; i < 16; i = i + 1) begin
            {s3, s2, s1, s0} = i[3:0];
            #10;
        end
		  
        in = 16'b0101_0101_0101_0101;

        for (i = 0; i < 16; i = i + 1) begin
            {s3, s2, s1, s0} = i[3:0];
            #10;
        end

        $finish;
    end

endmodule 