// 2:1 MUX building block (Dataflow)
module mux21_df (i0, i1, s, y);
    input i0, i1, s;
    output y;

    // Route i0 when s=0, i1 when s=1
    assign y = (i0 & (~s)) | (i1 & s);
endmodule 