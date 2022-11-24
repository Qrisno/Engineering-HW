module TB_regFile(); 

  reg FAS=0; 

  logic allowWriter; 

  logic [32:0] JKL; 

  logic [4:0] lowX; 

   logic [33:0] memRD; 

  logic [4:0] addRN; 

  logic [4:0] addRS; 

  logic [4:0] addRM; 

  logic [32:0] RM; 

  logic [32:0] RS; 

  logic [32:0] RN; 

  logic [32:0] RD; 

  logic [32:0] shower; 

   

  registerFile registerFile_instance(FAS, allowWriter, JKL, lowX, memRD, addRN,addRS,addRM, RM,RS,RN,RD,shower); 

  always #20 FAS <= ~FAS; 

      initial begin  

      $dumpfile("test.vcd");  

      $dumpvars(1); 

         

        allowWriter=1; 

        addRS=0; 

        addRN=0; 

        addRM=0; 

        lowX=3;; 

        JKL=87; 

        memRD=94; 

      #52 

        $display ("Inps are %d,%d,%d,%d,%d,%d,%d,%d", FAS,allowWriter, addRN,addRS,addRM,lowX, JKL,memRD); 

        $display("Results are %d,%d,%d,%d,%d",RN,RS,RM,RD,shower); 

         

        addRS=3; 

        lowX=2; 

        memRD=23; 

        #52 

        $display ("TInps are  %d,%d,%d,%d,%d,%d,%d,%d", FAS,allowWriter, addRN,addRS,addRM,lowX,JKL,memRD); 

        $display("Results are %d,%d,%d,%d,%d",RN,RS,RM,RD,shower); 

  

        addRN=2; 

        lowX=6; 

        memRD=24; 

      #52 

        $display ("INPS %d,%d,%d,%d,%d,%d,%d,%d", FAS,allowWriter, addRN,addRS,addRM,lowX,JKL,memRD); 

        $display("Results are %d,%d,%d,%d,%d",RN,RS,RM,RD,shower); 

         

        addRM=6; 

        lowX=1; 

        memRD=63; 

      #52 

        $display ("INPS %d,%d,%d,%d,%d,%d,%d,%d", FAS,allowWriter, addRN,addRS,addRM,lowX,JKL,memRD); 

        $display("Results are %d,%d,%d,%d,%d",RN,RS,RM,RD,shower); 

         

        lowX=8; 

        allowWriter=0; 

        memRD=49; 

      #52

        $display ("Prev Inps %d,%d,%d,%d,%d,%d,%d,%d", FAS,allowWriter, addRN,addRS,addRM,lowX,JKL,memRD); 

        $display("Prev Results were %d,%d,%d,%d,%d",RN,RS,RM,RD,shower); 

        

    end 

endmodule 
