module Decoder_3x8(
    input x, y, z,
    output [7:0] D
    );
    wire [2:0] D0_wire,D1_wire,D2_wire;

    and G0(D[0],D0_wire[0],D0_wire[1],D0_wire[2]);
    and G1(D[1],z,D0_wire[0],D0_wire[1]);
    and G2(D[2],y,D0_wire[0],D0_wire[2]);
    and G3(D[3],z,y,D0_wire[0]);
    and G4(D[4],x,D0_wire[1],D0_wire[2]);
    and G5(D[5],x,z,D0_wire[1]);
    and G6(D[6],x,y,D0_wire[2]);
    and G7(D[7],x,z,y);

    not G8(D0_wire[0],x);
    not G9(D0_wire[1],y);
    not G10(D0_wire[2],z);

    
endmodule

