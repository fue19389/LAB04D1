//Universidad del Valle de Guatemala
//Gerardo Fuentes
//19389

module testbench();

  reg b1, b2, b3, b4;
  wire s1, s2, s3, s4, s5, s6, s7, s8;

  ejer1 E1(b1, b2, b3, s1);
  ejer2 E2(b1, b2, b3, s2);
  ejer3 E3(b1, b2, b3, b4, s3);
  ejer4 E4(b1, b2, b3, b4, s4);
  ejer5 E5(b1, b2, b3, b4, s5);
  ejer6 E6(b1, b2, b3, s6);
  ejer7 E7(b1, b2, b3, b4, s7);
  ejer8 E8(b1, b2, b3, s8);

  initial begin
    #1
    $display("Ejercicios 1.1, 1.2, 2.2, 2.4");
    $display("A B C | Y1 Y2 Y6 Y8");
    $display("------|------");
    $monitor("%b %b %b | %b %b %b %b", b1, b2, b3, s1, s2, s6, s8);
       b1 = 0; b2 = 0; b3 = 0;
    #1 b1 = 0; b2 = 0; b3 = 1;
    #1 b1 = 0; b2 = 1; b3 = 0;
    #1 b1 = 0; b2 = 1; b3 = 1;
    #1 b1 = 1; b2 = 0; b3 = 0;
    #1 b1 = 1; b2 = 0; b3 = 1;
    #1 b1 = 1; b2 = 1; b3 = 0;
    #1 b1 = 1; b2 = 1; b3 = 1;
  end

  initial begin
    #9
    $display("\n")
    $display("Ejercicios 1.3, 1.4, 2.1, 2.3");
    $display("A B C D | Y3 Y4 Y5 Y7");
    $display("--------|------------");
    $monitor("%b %b %b %b | %b %b %b %b", b1, b2, b3, b4, s3, s4, s5, s7);
       b1 = 0; b2 = 0; b3 = 0; b4 = 0;
    #1 b1 = 0; b2 = 0; b3 = 0; b4 = 1;
    #1 b1 = 0; b2 = 0; b3 = 1; b4 = 0;
    #1 b1 = 0; b2 = 0; b3 = 1; b4 = 1;
    #1 b1 = 0; b2 = 1; b3 = 0; b4 = 0;
    #1 b1 = 0; b2 = 1; b3 = 0; b4 = 1;
    #1 b1 = 0; b2 = 1; b3 = 1; b4 = 0;
    #1 b1 = 0; b2 = 1; b3 = 1; b4 = 1;
    #1 b1 = 1; b2 = 0; b3 = 0; b4 = 0;
    #1 b1 = 1; b2 = 0; b3 = 0; b4 = 1;
    #1 b1 = 1; b2 = 0; b3 = 1; b4 = 0;
    #1 b1 = 1; b2 = 0; b3 = 1; b4 = 1;
    #1 b1 = 1; b2 = 1; b3 = 0; b4 = 0;
    #1 b1 = 1; b2 = 1; b3 = 0; b4 = 1;
    #1 b1 = 1; b2 = 1; b3 = 1; b4 = 0;
    #1 b1 = 1; b2 = 1; b3 = 1; b4 = 1;
  end

  initial
    #22 $finish;

  initial begin
    $dumpfile("plab4_tb.vcd");
    $dumpvars(0, testbench);
  end

endmodule
