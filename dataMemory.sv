module dataMemory(
  input [32:0] rdBaseOffset,
  input [32:0] addd,
  input roc,
  input clock,
  output [32:0] memData
);

  logic [32:0] data[16:0];
  assign memData = data[addd];

always @(posedge clock) begin
  if(roc) data[addd] <= rdBaseOffset;
end

endmodule
