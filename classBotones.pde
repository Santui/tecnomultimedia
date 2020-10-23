class Boton {
  int bx, by, btam; 
  String textBoton; 

  Boton(int bx_, int by_, int btam_, String textBoton_) {
    bx = bx_;
    by = by_;
    btam = btam_;
    textBoton = textBoton_;
    textSize(22); 
    textAlign(CENTER);
  }

  void dibujar() { 
    noFill();
    noStroke();
    
    text(textBoton, bx+btam/2, by+btam/4);
  }

  boolean botonPress(int bx_, int by_, int btam_) {
    bx = bx_;
    by = by_;
    btam = btam_;
    boolean presionado = mouseX>bx && mouseX<bx+btam && mouseY>by && mouseY<by+btam/2 == true;
    return presionado;
  }
}
