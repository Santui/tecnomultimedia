class Juego {
  Meteorito [] arregloDeMeteoritos;
  int cantMeteoritos = 8;
  int estado = 1;
  int tiempo;
  boolean jugando;
  Nave miNave;
  pantallaFin perdiste;

  Juego() {
    
    
    miNave = new Nave();
   
    perdiste = new pantallaFin();
    arregloDeMeteoritos = new Meteorito[cantMeteoritos];
    for ( int i=0; i<cantMeteoritos; i++ ) {
      arregloDeMeteoritos[i] = new Meteorito();
    }
  }

  void draw() {
    
     
    if (estado==2) {
      fill(0, 20, 255, 200);
        
        fill(255);
        text("tiempo:" + tiempo, 125, 25);
      timer();
      miNave.draw();
      for ( int i=0; i<cantMeteoritos; i++ ) {
        arregloDeMeteoritos[i].draw();
        if ( arregloDeMeteoritos[i].colision( miNave.getX(), 
          miNave.getY(), miNave.getRadio() ) ) {
            bum.play();
          cambiarAEstado(3);
        }
      }
    } else if (estado==3) {
      perdiste.dibujar();
      perdiste.click();
    }
  }

  void keyPressed() {
    if ( estado==1) {
    } else if (estado==2) { 
      miNave.keyPressed();
    } else if (estado==3) {
    }
  }

  void mousePressed() {
   
      cambiarAEstado(2);
    
    
  }

  void cambiarAEstado( int nuevoEstado_ ) {
    estado = nuevoEstado_;
    if ( nuevoEstado_ == 2 ) {
     
      miNave = new Nave();
      arregloDeMeteoritos = new Meteorito[cantMeteoritos];
      for ( int i=0; i<cantMeteoritos; i++ ) {
        arregloDeMeteoritos[i] = new Meteorito();
      }
    }
  }
 void timer(){
 if(frameCount%60==0){
   tiempo++;
 }
if(tiempo>=25){
aventura.cambiarEstado(estado=5);
}
}
void actualizar(){

tiempo=0;
}
}
