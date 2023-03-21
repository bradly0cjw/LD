module tb_BCD2Excess6;

  reg [0:3] I;
  wire [0:3] O;

  BCD2Excess6 uut(
    .A(I[0]),
    .B(I[1]),
    .C(I[2]),
    .D(I[3]),
    .W(O[0]),
    .X(O[1]),
    .Y(O[2]),
    .Z(O[3])
  );

  initial begin
    #10 I = 4'h0
    #10 I = 4'h9
    #10 I = 4'h6
    #10 I = 4'hf
    #10 I = 4'h1
    // #10 A = 0 ; B = 0 ; C = 0 ; D = 0;
    // #10 A = 1 ; B = 0 ; C = 0 ; D = 1;
    // #10 A = 0 ; B = 1 ; C = 1 ; D = 0;
    // #10 A = 1 ; B = 1 ; C = 1 ; D = 1;
  end
initial #50 $finish;

endmodule