//Universidad del Valle de Guatemala
//Gerardo Fuentes
// 19389

module testbench();

  reg t1, t2, t3;
  wire s1, s2, s3, s4, s5, s6;

  posSTL L1(t1, t2, t3, s1);
  sopSTL L2(t1, t2, t3, s2);
  mmzSTL L3(t1, t2, t3, s3);
  posBVL L4(t1, t2, t3, s4);
  sopBVL L5(t1, t2, t3, s5);
  mmzBVL L6(t1, t2, t3, s6);

  initial begin
    #1
    $display("\n");
    $display("Todas las ecuaciones");
    $display("A B C | Y1 Y2 Y3 Y4 Y5 Y6");
    $display("------|------------------");
    $monitor("%b %b %b | %b  %b  %b  %b  %b  %b", t1, t2, t3, s1, s2, s3, s4 ,s5, s6);
       t0 = 0; t2 = 0; t3 = 0;
    #1 t0 = 0; t2 = 0; t3 = 1;
    #1 t0 = 0; t2 = 1; t3 = 0;
    #1 t0 = 0; t2 = 1; t3 = 1;
    #1 t1 = 1; t2 = 0; t3 = 0;
    #1 t1 = 1; t2 = 0; t3 = 1;
    #1 t1 = 1; t2 = 1; t3 = 0;
    #1 t1 = 1; t2 = 1; t3 = 1;
  end

  
