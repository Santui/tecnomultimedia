import ddf.minim.*;
Minim minim;
AudioPlayer bum;
AudioPlayer player;
Aventura aventura;
  Juego juego;
  Botones botones;
  
  PImage fondo2;
  boolean DEBUG = false;
void setup(){
size(1024,768);
minim = new Minim(this);
bum=minim.loadFile("bum.mpeg");
  player = minim.loadFile("starduelo.mp3");
  player.play();
aventura = new Aventura();
surface.setResizable(true);
surface.setLocation(100,100);
 
}
void draw(){
aventura.dibujar();
}




void keyPressed(){
  aventura.keyPressed();
  juego.keyPressed();   
}
void mouseClicked(){
  aventura.botones();
  juego.mousePressed();
  println(mouseX+","+mouseY); 


}


  
