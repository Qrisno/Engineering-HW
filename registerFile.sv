module registerFile( 

  input clk, 

  input rd, 
input [3:0] rm, 

  input [31:0] nextOc, 

  input [3:0] mY, 
output [31:0]Brn, 
  input [3:0] rs, 

  input [3:0] addRn, 

  output [31:0]Brm, 

  output [31:0]Brs, 

  output [31:0]Brd, 

  output [31:0]PCout, 
input [31:0] rdd, 

); 

  

  logic [31:0] DM [15:0]; 

   

  assign Rs = DM[rs]; 

  assign Rd = DM[mY]; 

  assign Brm = DM[Brm]; 

  assign Rn = DM[addRn]; 

  assign PCout = DM[15]; 

 

   always @(posedge clk) begin 

     DM[15] <= nextOc; 

    if(rd)  

      DM[mY] <= rdd; 

  end 

  

endmodule 
