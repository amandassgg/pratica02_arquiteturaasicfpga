//Questão 01 da Prática 02 de Arquietura ASIC E FPGA
//Foram utilizadas LUTs de 3 entradas para realização de um circuito digital
//Aluna: Amanda Sousa Gonçalves
`timescale  1 ps / 1 ps
module q2_tb;
  logic A0, A1, A2, A3, s1, s2, s3, s4, s5, Y;
  
  // instantiating the module to map connections
  LUT3 #(.INIT(8'h01)) LUT3_NOR1(.I0(A3), .I1(A2), .I2(A1), .O(s1));
  LUT3 #(.INIT(8'h80)) LUT3_AND1(.I0(A3), .I1(A2), .I2(A0), .O(s2));
  LUT3 #(.INIT(8'h80)) LUT3_AND2(.I0(A3), .I1(A2), .I2(A1), .O(s3));
  LUT3 #(.INIT(8'h01)) LUT3_NOR2(.I0(A3), .I1(A2), .I2(A0), .O(s4));
  LUT3 #(.INIT(8'hfe)) LUT3_OR1(.I0(s2), .I1(s3), .I2(s4), .O(s5));
  LUT3 #(.INIT(8'hfe)) LUT3_OR2(.I0(s5), .I1(s1), .I2(s1), .O(Y));
  
initial
begin
  A3 = 1'b0;
  A2 = 1'b0;
  A1 = 1'b0;
  A0 = 1'b0;

  #5
  A3 = 1'b0;
  A2 = 1'b0;
  A1 = 1'b0;
  A0 = 1'b1;    

  #5
  A3 = 1'b0;
  A2 = 1'b0;
  A1 = 1'b1;
  A0 = 1'b0;
  
  #5
  A3 = 1'b0;
  A2 = 1'b0;
  A1 = 1'b1;
  A0 = 1'b1;

  #5
  A3 = 1'b0;
  A2 = 1'b1;
  A1 = 1'b0;
  A0 = 1'b0;

  #5
  A3 = 1'b0;
  A2 = 1'b1;
  A1 = 1'b0;
  A0 = 1'b1;
  
  #5
  A3 = 1'b0;
  A2 = 1'b1;
  A1 = 1'b1;
  A0 = 1'b0;

  #5
  A3 = 1'b0;
  A2 = 1'b1;
  A1 = 1'b1;
  A0 = 1'b1;

  #5
  A3 = 1'b1;
  A2 = 1'b0;
  A1 = 1'b0;
  A0 = 1'b0;

  #5
  A3 = 1'b1;
  A2 = 1'b0;
  A1 = 1'b0;
  A0 = 1'b1;

  #5
  A3 = 1'b1;
  A2 = 1'b0;
  A1 = 1'b1;
  A0 = 1'b0;

  #5
  A3 = 1'b1;
  A2 = 1'b0;
  A1 = 1'b1;
  A0 = 1'b1;

  #5
  A3 = 1'b1;
  A2 = 1'b1;
  A1 = 1'b0;
  A0 = 1'b0;

  #5
  A3 = 1'b1;
  A2 = 1'b1;
  A1 = 1'b0;
  A0 = 1'b1;

  #5
  A3 = 1'b1;
  A2 = 1'b1;
  A1 = 1'b1;
  A0 = 1'b0;
  #5
  A3 = 1'b1;
  A2 = 1'b1;
  A1 = 1'b1;
  A0 = 1'b1; 
  #5
  A3 = 1'b0;
  A2 = 1'b0;
  A1 = 1'b0;
  A0 = 1'b0;      
end

initial
begin
  $display("                Tempo         Entradas       Saídas");
  $display("                         A3   A2   A1   A0       O");
  $display("                ====   ======================   ====");
  $monitor($time,"     %b    %b    %b    %b       %b", A3, A2, A1, A0,  Y);
end

  
endmodule
