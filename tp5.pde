//Mi videojuego se basa en la pantalla 8 en la que llega la cueva, esto seria previo a eso
Juego juego; 
import ddf.minim.*;
Minim minim;
AudioPlayer audiouno;
AudioPlayer audiodos;
AudioPlayer audiotres;
AudioPlayer audiocuatro;

void setup() {
  minim = new Minim(this);
  audiouno=minim.loadFile("intro.mp3");
  audiodos=minim.loadFile("hey.mp3");
  audiotres=minim.loadFile("gya.mp3");
  audiocuatro=minim.loadFile("jugar.mp3");
  size(800, 600);
  juego = new Juego();
}
void draw() {
  background(0);
  audiouno.play();
  juego.dibujar();
}

void keyPressed() {
  juego.moverLink(keyCode);
}
void mousePressed() {
  juego.botones();
}
