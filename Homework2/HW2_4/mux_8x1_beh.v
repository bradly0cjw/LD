module mux_8x1(
    input A,B,C,D,
    output reg F
);

    always @(A,B,C,D)
    case ({A,B,C})
        3'b000: F=!D;
        3'b001: F=!D;
        3'b010: F=D;
        3'b011: F=0;
        3'b100: F=!D;
        3'b101: F=!D;
        3'b110: F=0;
        3'b111: F=!D;
        
    endcase

endmodule