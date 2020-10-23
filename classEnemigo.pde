class Malo {
  PImage malo;
  float cx, cy, ctam, cdir;
  float vel;
  boolean contacto;
  
 Malo(float cy_ ) {

    malo = loadImage("malo.png");
    cx =  width+random(300, 800); 
    cy = cy_;
    ctam = 50;
    cdir = random(-2, - 10);
    vel = cdir;
    contacto = true; 
   
  }

  void dibujarMalo() {
    image(malo, cx, cy,ctam,ctam);
    
  }

  void moverMalo(float vel_) { 
    vel = vel_;
    if (cx<-200) {
      cx = width+random(300, 800);
      contacto=true ;
    }
   
    cx += cdir*vel;
  }
}
