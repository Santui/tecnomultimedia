class pantallaFin {
  PFont miFuente;
  String texto; 
  String volver;
  int x,y;
  int radio;
  PImage fondo3;
  pantallaFin(){
    miFuente = loadFont("YuGothic-Bold-48.vlw"); 
    texto = "Has fallado!";
    volver = "Volver a intentar";
    x = width/2;
    y = height/2;
    radio = 85;
    fondo3 = loadImage ("fondo3.jpg");
  }
  void dibujar(){
  image(fondo3,0,0);
  textFont(miFuente);
  textAlign(CENTER);
  textSize(40);
  text(texto,x,y-100);
  textSize(25);
  text(volver,x,y+200);
} 
boolean click(){
  if(dist(x,y+200, mouseX, mouseY)<radio){
    estado=0;
    return true;
  } else {
    return false; 
    }
  }
}
