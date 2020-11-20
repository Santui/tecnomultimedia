class Nave {
  PImage nave;
  float ancho,alto,radio;
  float x, y;
  float paso;

  Nave() {
    nave = loadImage("nave.png");
    x = width/2;
    y = height/2;
    ancho = 146;
    alto = 72;
    radio = alto/2;
    paso = 10;
  }
  void draw() {
    push();
    translate(x, y);
    imageMode(CENTER);
    image( nave, 0, 0, ancho, alto);
    pop();
  }

  void keyPressed() {
    mover();
  }

  void mover() {
    if (keyCode==LEFT) {
      x = (x - paso);
    }
    if (keyCode==RIGHT) {
      x = (x + paso);
    }
    if (keyCode==UP) {
      y = (y - paso);
    }
    if (keyCode==DOWN) {
      y = (y + paso);
    }
  }
  
  float getX(){
   return x; 
  }
  
   float getY(){
   return y; 
  }

 float getRadio(){
   return radio; 
  } 
}
