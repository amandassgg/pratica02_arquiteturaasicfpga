//Questão 01 da Prática 02 de Arquietura ASIC E FPGA
//Foram utilizadas LUTs de 2 entradas para realização de um circuito
//Aluna: Amanda Sousa Gonçalves
`timescale  1 ps / 1 ps
module q1_tb;
  logic S1, S2, S3, S, A, B, C, D;
  
  // instantiating 
  LUT2 #(.INIT(4'h7)) LUT2_INST_AND1( .I0(A), .I1(B), .O(S1) );
  LUT2 #(.INIT(4'h7)) LUT2_INST_AND2( .I0(S1), .I1(C), .O(S2) );
  LUT2 #(.INIT(4'h7)) LUT2_INST_AND3( .I0(D), .I1(C), .O(S3) );
  LUT2 #(.INIT(4'h1)) LUT2_INST_NOR ( .I0(S2), .I1(S3), .O(S) );

initial 
  begin
  A = 1'b0;
  B = 1'b0;
  C = 1'b0;
  D = 1'b0;
  #5
  A = 1'b0;
  B = 1'b0;
  C = 1'b0;
  D = 1'b1;
  #5
  A = 1'b0;
  B = 1'b0;
  C = 1'b1;
  D = 1'b0;
  #5
  A = 1'b0;
  B = 1'b0;
  C = 1'b1;
  D = 1'b1;
  #5
  A = 1'b0;
  B = 1'b1;
  C = 1'b0;
  D = 1'b0;
  #5
  A = 1'b0;
  B = 1'b1;
  C = 1'b0;
  D = 1'b1;
  #5
  A = 1'b0;
  B = 1'b1;
  C = 1'b1;
  D = 1'b0;
  #5
  A = 1'b0;
  B = 1'b1;
  C = 1'b1;
  D = 1'b1;
  #5
  A = 1'b1;
  B = 1'b0;
  C = 1'b0;
  D = 1'b0;
  #5
  A = 1'b1;
  B = 1'b0;
  C = 1'b0;
  D = 1'b1;
  #5
  A = 1'b1;
  B = 1'b0;
  C = 1'b1;
  D = 1'b0;
  #5
  A = 1'b1;
  B = 1'b0;
  C = 1'b1;
  D = 1'b1;
  #5
  A = 1'b1;
  B = 1'b1;
  C = 1'b0;
  D = 1'b0;
  #5
  A = 1'b1;
  B = 1'b1;
  C = 1'b0;
  D = 1'b1;
  #5
  A = 1'b1;
  B = 1'b1;
  C = 1'b1;
  D = 1'b0;
  #5
  A = 1'b1;
  B = 1'b1;
  C = 1'b1;
  D = 1'b1;
  #5
  A = 1'b0;
  B = 1'b0;
  C = 1'b0;
  D = 1'b0;

end
  
    initial
    begin
      $display("                Tempo   Entradas LUT      Saída");
      $display("                         A  B  C  D         S");
      $display("                ====   ==============    =======");
      $monitor($time,"     %b  %b  %b  %b         %b", A, B, C, D, S);
    end
  
endmodule
