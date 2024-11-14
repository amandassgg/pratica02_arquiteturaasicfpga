//Questão 03 da Prática 02 de Arquietura ASIC E FPGA
//Foram utilizadas LUTs de 3  e de 2 entradas para realização de um circuito digital
//Aluna: Amanda Sousa Gonçalves
`timescale  1 ps / 1 ps
module Q3_tb;
  logic A, B, Cin, out0, out1, out2, out3, S, Cout;
  
  // instantiating the module to map connections
  LUT2 #(.INIT(8'h06)) LUT2_1(.I0(B), .I1(Cin), .O(out0));
  LUT2 #(.INIT(8'h08)) LUT2_2(.I0(B), .I1(Cin), .O(out1));
  LUT2 #(.INIT(8'h08)) LUT2_3(.I0(B), .I1(A), .O(out2));
  LUT2 #(.INIT(8'h08)) LUT2_4(.I0(A), .I1(Cin), .O(out3));
  LUT3 #(.INIT(8'hfe)) LUT3_1(.I0(out1), .I1(out2), .I2(out3), .O(Cout));
  LUT2 #(.INIT(8'h06)) LUT2_5(.I0(A), .I1(out0), .O(S));
  
 initial
  begin
    A = 1'b0;
    B = 1'b0;
    Cin = 1'b0;

    #5
    A = 1'b0;
    B = 1'b0;
    Cin = 1'b1;

    #5
    A = 1'b0;
    B = 1'b1;
    Cin = 1'b0;

    #5
    A = 1'b0;
    B = 1'b1;
    Cin = 1'b1;

    #5
    A = 1'b1;
    B = 1'b0;
    Cin = 1'b0;

    #5
    A = 1'b1;
    B = 1'b0;
    Cin = 1'b1;

    #5
    A = 1'b1;
    B = 1'b1;
    Cin = 1'b0;

    #5
    A = 1'b1;
    B = 1'b1;
    Cin = 1'b1;

    #5
    A = 1'b0;
    B = 1'b0;
    Cin = 1'b0;
  end

  
    initial
    begin
      $display("                Tempo   Entradas LUT3   Saídas");
      $display("                         A   B   Cin     S  Cout");
      $display("                ====   ================  ========");
      $monitor($time,"     %b    %b    %b     %b  %b", A, B, Cin, S,Cout);
    end
  
endmodule
