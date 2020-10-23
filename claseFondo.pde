class Fondo {
  int cantImag = 6;
  PImage [] fondo;
  int fx;
  int numFondo;
  float vel;
  Fondo () {
    fondo = new PImage[cantImag];
    for (int i=0; i<fondo.length; i++) {
      fondo [i] = loadImage("fondo_"+i+".png");
    }
  }

  void dibujarFondo(int numFondo_, float vel_) {
    vel = vel_;
    numFondo = numFondo_;


    image(fondo[numFondo], fx, 0);
    if (numFondo==2 ) { 
      fx = fx<-800 ? 0 : fx;
      fx -= vel;
    } else {
      fx = 0;
    }
  }
}
