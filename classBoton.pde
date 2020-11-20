class Botones {
  Botones() {
  }

  void botones(int x_, int y_, int ancho_, int alto_, int e, int c) { 

    if  (mouseX>x_-ancho_/2 && mouseX<x_+ancho_/2 && mouseY>y_-alto_/2 && mouseY< y_+alto_/2) {
      if (estado== e) { //estado actual
        estado = c; //estado al que cambia
      }
    }
  }
}
