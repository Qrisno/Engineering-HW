module instructionMemory( 

   input [31:0] poc, 

   output [31:0] out 

); 

  

  logic [31:0] dMem [15:0]; 

  assign dMem[8] = 30; 

  assign out = dMem[poc]; 

  

endmodule 