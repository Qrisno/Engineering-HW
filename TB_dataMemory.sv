module TB_dataMemory();
  
  reg clockiii = 0;
  logic [32:0]rld;
  logic [32:0]dest;
  logic allowWriter;
  logic [32:0] outAllow;
  
  dataMemory dataMem_instance(clockiii,rld,dest,allowWriter,outAllow);
  always #10 clockiii <= ~clockiii;
      initial begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #60
      rld= 78;
      dest = 6;
      allowWriter = 1;
      #60
        $display ("inps %d,%d,%d,%d ", clockiii,rld,dest,allowWriter);
        $display("outs %d", outAllow);
      #60
      rld= 12345;
      dest = 6;
      allowWriter = 0;
      #60
        $display ("inps %d,%d,%d,%d ", clockiii,rld,dest,allowWriter);
        $display("outs %d", outAllow);
      
      #60
      
      rld= 445;
      dest = 6;
      allowWriter = 1;
      #60
        $display ("inps %d,%d,%d,%d ", clockiii,rld,dest,allowWriter);
        $display("outs %d", outAllow);
      
      #60
      rld= 1234;
      dest = 7;
      #60
       $display ("The onput ---> %d,%d,%d,%d ", clockiii,rld,dest,allowWriter);
       $display("outs %d", outAllow);
      
      #60
      dest =6;
      allowWriter = 0;
      #60
      dest =6;
      allowWriter = 0;
        $display ("inps %d,%d,%d,%d ", clockiii,rld,dest,allowWriter);
        $display("outs %d", outAllow);
      
    end
endmodule
