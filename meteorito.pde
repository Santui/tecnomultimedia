class Meteorito {
  PImage meteorito;
  float x, y;
  float dir, vel;
  float ancho, alto;
  float radio;  

  Meteorito() {
    meteorito = loadImage("meteorito.png");
    x = random (0, width);
    y = 0;
    dir = random (20, 160);
    vel = random (3, 5);
    ancho = 50;
    alto = 50;
    radio = alto/2;
  }

  void draw() {
    mover();
    dibujar();
  }

  void dibujar () {    
    push();
    translate(x, y);
    image(meteorito,0, 0, ancho, alto);
    pop();
  }

  void mover() {
    float despX, despY;
    despX = cos( radians(dir) ) * vel;
    despY = sin( radians(dir) ) * vel;
    x+=despX;
    y+=despY; 

    if ( x>width+ancho ) {
      x = random (0, width);
      y = 0;
    }
    if ( x<0-ancho ) {
      x = random (0, width);
      y = 0;
    }
    if ( y>height+ancho ) {
      y = 0;
      x = random (0, width);
    }
    if ( y<0-ancho ) {
      y = 0;
      x = random (0, width);
    }
  }

  boolean colision(  float x_, float y_, float radio_ ) {
    if ( DEBUG ) {
      stroke(255);
      line(x, y, x_, y_);
    }
    float distancia = dist(x, y, x_, y_);
    if ( distancia < radio+radio_ ) {
      return true;
    } else {
      return false;
    }
  }
}
