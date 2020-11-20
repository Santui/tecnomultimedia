int estado=0;
class Aventura {

  int x, y, ancho, alto;
  float tam;
  int numOp;
  int numPant;
  int cant;
  PFont mifuente;
  int cantImag=17;
  PImage[]images;
  
  Botones botones;
  Aventura() {
     juego = new Juego();
  fondo2 = loadImage ("fondo2.png");
  mifuente = loadFont("YuGothic-Bold-48.vlw");
    cant=17;
    Juego juego;
botones= new Botones();
    images= new PImage[cantImag];
    for (int i=0; i< images.length; i++) {
      images[i] = loadImage("imagen_"+i+".png");
    }
    
  }
  //----estados----//
  void dibujar() {


    if (estado==0) {
      image(images[9], 0, 0, 1024, 768);
      juego.jugando=false;
        juego.actualizar();
         textAlign( CENTER );
  textFont(mifuente);
  fill( 10, 169, 236 );
  textSize( 25 );
  text( "Tecnología Multimedial 1", 825, 550 );
  textSize( 20 );
  text( "Alumnos: ", 825, 625 );
  text("Florencia Colavita",825,725);
  
        text( "Santiago Olavarria",825,675);
   
    }
    if (estado==1) {
      image(images[8],0,0,width,height);
     image(images[0],800, 400,200,350);
  image(images[1],500,400, 200,350);
  juego.jugando=false;
    }
    if (estado==2) {
       image(images[14],0,0,width,height);
   image(images[4],525,500,450,75);
    image(images[5],50,500,450,75);
    juego.jugando=false;
    }
    if (estado==3) {
      image(fondo2, 0, 0);
      juego.jugando=true;
      juego.draw();
       
      //juego= new Juego();
      
    }
    if (estado==4) {
     image(images[7],0,0,width,height);
     juego.jugando=false;
    }
    if (estado==5) {
     image(images[6],0,0,width,height);
     juego.jugando=false;
    }
    if (estado==6) {
     image(images[12],0,0,width,height);
    image(images[16],400,600,250,70);
  //rect(525,640,250,70);
  image(images[15],400,500,250,70);
  //rect(525,540,250,70);
  image(images[3],400,400,250,70);
  //rect(525,440,250,70);
  juego.jugando=false;
    }
    if (estado==7) {
     image(images[11],0,0,width,height);
     juego.jugando=false;
    }
    if (estado==8){
    image(images[10],0,0,width,height);
    juego.jugando=false;
    }
    if(estado==9){
    image(images[13],0,0,width,height);
    juego.jugando=false;
    }
    if(estado==10){
    image(images[2],0,0,width,height);
    juego.jugando=false;
    
    }
  }
 // ---logica botones estados---
  void botones() {
   
 botones.botones(900, 575,200,350 ,1,2);
botones.botones(600, 620, 418, 444,1,2);
   

  
 botones.botones(700,850,600,670,2,4); //der
 botones.botones(405,685,455,720,4,10); //creditos
 botones.botones(405,685,455,720,7,10); //creditos
 botones.botones(405,685,455,720,8,10); //creditos
 botones.botones(405,685,455,720,9,10); //creditos
 botones.botones(100,510,700,800,10,0); //reinicia creditos
     botones.botones(50,500,500,575,2,3); //izq
    
   botones.botones(460,510,700,800,5,6);
   
   botones.botones(525,640,250,70,6,9);
   botones.botones(525,540,250,70,6,8);
   botones.botones(525,440,250,70,6,7);
  }
void keyPressed(){
if(estado==0 &&  key == ' ' ) {
  estado=1;
}
  
  }
    void cambiarEstado( int nuevoEstado){
    estado=nuevoEstado;
    println(estado);
   
    }

}
 
 
