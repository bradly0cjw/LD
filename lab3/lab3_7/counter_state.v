module counter_state(
    input clock, reset,
    output [2:0] A
    );
    reg [2: 0]	state;
    parameter    S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100, S5 = 3'b101, S6 = 3'b110, S7 = 3'b111;
    always @ (posedge clock, negedge reset)
      if (reset == 0) state <= S0;    // Initialize to state S0
      else case (state)
        S0: state <= S1;
        S1: state <= S2;
        S2: state <= S3;
        S3: state <= S4;
        S4: state <= S5;
        S5: state <= S6;
        S6: state <= S7;
        S7: state <= S0;
      endcase 
    assign A = state;
  endmodule 
