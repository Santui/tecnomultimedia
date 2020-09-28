
//CLASE NOMBRE_INSTANCIA
Lapiz lapiz;

void setup(){
  size( 400, 400 );
  
  
  lapiz = new Lapiz( 3 );
  
}

void draw(){
  lapiz.visualizar();
}

void mouseDragged(){
  
  lapiz.dibujar();
}

void keyPressed(){
  lapiz.cambiarColor();
  lapiz.aumentarGrosor();
  lapiz.disminuirGrosor();
}
