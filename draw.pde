void draw() {
  if (true) {
    intro.play();
    if (intro.position()>=intro.length()) {
      intro.rewind();
    }
  }
  if (pantalla==1) {
    pantalla1();
  } else if (pantalla==2) {
    pantalla2();
  } else if (pantalla==3) {
    pantalla3();
  } else if (pantalla==4) {
    pantalla4();
  } else if (pantalla==5) {
    pantalla5();
  } else if (pantalla==6) {
    pantalla6();
  } else if (pantalla==7) {
    pantalla7();
  } else if (pantalla==8) {
    pantalla8();
  } else if (pantalla==9) {
    pantalla9();
  } else if (pantalla==10) {
    pantalla10();
  } else if (pantalla==11) {
    pantalla11();
  } else if (pantalla==12) {
    pantalla12();
  } else if (pantalla==13) {
    pantalla13();
  } else if (pantalla==14) {
    pantalla14();
  }
}
