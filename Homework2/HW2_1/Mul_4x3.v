module Mul_4X2(
    input[2:0]A,
    input[3:0]B,
    output[6:0]C
    );
    wire[2:0]X1;
    wire[3:0]Y1;
    wire[3:0]X2;
    wire[3:0]Y2;
    and G1(C[0],B[0],A[0]);
    and G2(X1[0],B[1],A[0]);
    and G3(X1[1],B[2],A[0]);
    and G4(X1[2],B[3],A[0]);
    and G5(Y1[0],B[0],A[1]);
    and G6(Y1[1],B[1],A[1]);
    and G7(Y1[2],B[2],A[1]);
    and G8(Y1[3],B[3],A[1]);
    and G9(Y2[0],B[0],A[2]);
    and G10(Y2[1],B[1],A[2]);
    and G11(Y2[2],B[2],A[2]);
    and G12(Y2[3],B[3],A[2]);
    ripple_carry_4_bit_adder Adder1(
            .S({X2[2],X2[1],X2[0],C[1]}),
            .C4(X2[3]),
            .A({0,X1[2],X1[1],X1[0]}),
            .B(Y1),
            .C0(0)
        );
    ripple_carry_4_bit_adder Adder2(
            .S({C[5],C[4],C[3],C[2]}),
            .C4(C[6]),
            .A(X2),
            .B(Y2),
            .C0(0)
        );
endmodule