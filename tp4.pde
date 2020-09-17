PImage[] imagen = new PImage[7];
PFont fuente;
int pantalla=1;
int x;
import ddf.minim.*;
Minim minim;
AudioPlayer intro;

void setup() {
  minim=new Minim(this);
  intro=minim.loadFile("intro.mp3");
  size(800, 600);
fuente=loadFont("Triforce-48.vlw");
  imagen[0] =loadImage("campamento.jpg");
  imagen[1]=loadImage("campamentob.jpg");
  imagen[2]=loadImage("espada.jpg");
  imagen[3]=loadImage("finalbueno.jpg");
  imagen[4]=loadImage("isla.jpg");
  imagen[5]=loadImage("monstruo.jpg");
  imagen[6]=loadImage("pantallauno.jpg");
  
}
