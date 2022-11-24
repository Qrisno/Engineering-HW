module TB_mem(); 

  logic [31:0]out = 8; 

  logic [31:0]regularOUTP; 

   

  instructionMemory instructionMemory_instance(out, regularOUTP); 

  initial begin 

    $dumpfile("test.vcd");  

    $dumpvars(1); 

    #30 

    $display ("Inps %d", out); 

    #30 

    $display("Outs  %d", regularOUTP); 

  end 

endmodule 