module tb_Mul_4x3;
reg [2:0] A;
reg [3:0] B;
wire [5:0] C;
Mul_4x3 uut(A,B,C);
initial begin
    
    A=0;
    B=0;

    #20 A=3'h2;
        B=4'h8;
    #20 A=3'h3;
        B=4'h9;
    #20 A=3'h4;
        B=4'ha;
    end
    initial #150 $finish;
endmodule