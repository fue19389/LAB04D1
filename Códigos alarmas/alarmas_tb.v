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
