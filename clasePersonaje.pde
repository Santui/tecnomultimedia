
class Link {
  PImage personaje;
  float ax, ay, tam;

  Link() {
    personaje=loadImage("link00.png");

    ax = 100;
    ay = 200;
    tam = 100;
  }
  void dibujarLink() {
    image(personaje,ax,ay,tam,tam/2);
    
  }
  void subirCarril() {
    ay -= 100;
  }
  void bajarCarril() {
    ay += 100;
  }
}
