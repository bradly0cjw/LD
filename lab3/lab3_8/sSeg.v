module sSeg(
    input [2:0] A,
    output reg [7:0] seg,
    output reg [3:0] an
    );
   always@(A)
    case(A)
        3'b000: begin seg = 8'hC0; an = 4'hE; end
        3'b001: begin seg = 8'hF9; an = 4'hD; end
        3'b010: begin seg = 8'hA4; an = 4'hB; end
        3'b011: begin seg = 8'hB0; an = 4'h7; end
        3'b100: begin seg = 8'h99; an = 4'hE; end
        3'b101: begin seg = 8'h92; an = 4'hD; end
        3'b110: begin seg = 8'h82; an = 4'hB; end
        3'b111: begin seg = 8'hD8; an = 4'h7; end
    endcase          
endmodule
