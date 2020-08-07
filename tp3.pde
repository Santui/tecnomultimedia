import ddf.minim.*;
Minim minim;
AudioPlayer intro;
AudioPlayer dentro;
String estado;
PFont fuente;
PImage isla,pantallauno,espada,monstruo,finalbueno,campamento,campamentodos;
int x;
void setup() {
  minim=new Minim(this);
  intro=minim.loadFile("intro.mp3");
  fuente=loadFont("Triforce-48.vlw");
  isla=loadImage("isla.jpg");
  pantallauno=loadImage("pantallauno.jpg");
  espada=loadImage("espada.jpg");
  monstruo=loadImage("monstruo.jpg");
  finalbueno=loadImage("finalbueno.jpg");
  campamento=loadImage("campamento.jpg");
  campamentodos=loadImage("campamentob.jpg");
  
  size(800, 600);
  textAlign(CENTER, CENTER);
  estado="titulo";
}
void draw() {
  intro.play();
  if (estado.equals("titulo")) {
    image(isla, 0, 0);
    textFont(fuente, 40);
    fill(255);
    text("AVENTURAS EN LA ISLA QUIEN", width/2, height/2);
    noFill();
    rect(660, 530, 135, 40);
    textSize(25);
    text("CREDITOS", 730, 550);
    text("TOCA BARRA ESPACIADORA PARA EMPEZAR",400,50);
    if ((mouseX>660) && (mouseX < 795) && (mouseY > 530) && (mouseY < 570 )&& mousePressed) {
      estado="creditos";
    }
  }
  if (estado.equals("creditos")) {
    background(0);
    text("INSPIRADO EN", 400, 500-x);
    text("THE LEGEND OF ZELDA", 400, 550-x);
    text("CREADOR", 400, 600-x);
    text("SANTIAGO OLAVARRIA", 400, 650-x);
    text("SONIDO", 400, 700-x);
    text("OCARINA OF TIME", 400, 750-x);
    text("IMAGENES", 400, 800-x);
    text("SACAS DEL PROPIO VIDEOJUEGO", 400, 850-x);
    text("MANIPULADAS CON PS", 400, 900-x);
    x++;
    fill(200);
    text("VOLVER", 100, 560);
    noFill();
    rect(50, 540, 80, 50);
    if ((mouseX>50) && (mouseX < 130) && (mouseY > 540) && (mouseY < 590 )&& mousePressed) {
      estado="titulo";
    }
    }
  if(estado.equals("pantallauno")){
  image(pantallauno,0,0);
  fill(0);
  text("ACABAS DE SER TRANSPORTADO A LA ISLA QUIEN",400,50);
  text("UN LUGAR LLENO DE PELIGROSAS CRIATURAS",400,100);
  text("QUE DEBERIAS HACER?",400,150);
  text("Salir a explorar la playa",140,450);
  if ((mouseX>20) && (mouseX < 260) && (mouseY > 440) && (mouseY < 455 )&& mousePressed) {
      estado="espada";
    }  
       text("Explorar el bosque",700,450);
    if ((mouseX>600) && (mouseX < 840) && (mouseY > 440) && (mouseY < 455 )&& mousePressed) {
      estado="campamento";
    }  
       text("Quedarse ahi",400,580);
    if ((mouseX>320) && (mouseX < 480) && (mouseY > 573) && (mouseY < 588 )&& mousePressed) {
      estado="caminomalo";
    }  
  



  }
  if(estado.equals("espada")){
    
  image(espada,0,0);
  fill(0);
   text("ENCONTRASTE UNA ESPADA!",400,250);
    text("ESTO PUEDE SERVIRTE MAS ADELANTE",400,300);
    text("TOCA BARRA ESPACIADORA PARA SEGUIR",400,50);
  }
  if(estado.equals("espadados")){
  
  image(espada,0,0);
  fill(0);
  text("ESTA CAYENDO LA NOCHE Y QUEDARSE NO ES UNA OPCION",400,50);
  text("PERO ENCUENTRAS DOS CAMINOS",400,100);
    text("QUE HARAS?",400,150);
   text("IR POR LA IZQUIERDA",140,450);
  if ((mouseX>20) && (mouseX < 260) && (mouseY > 440) && (mouseY < 455 )&& mousePressed) {
      estado="finalmaloespada";
    }  
 
       text("IR POR LA DERECHA",680,450);
    if ((mouseX>600) && (mouseX < 840) && (mouseY > 440) && (mouseY < 455 )&& mousePressed) {
      estado="finalbuenoespada";
    }  
    
  }
  if(estado.equals("finalmaloespada")){
  image(monstruo,0,0);
  fill(255);
  text("OH NO TE ENCONTRASTE CON UN GRUPO DE GOBLINS",400,50);
  text("Y TE ATRAPARON POR SORPRESA",400,100);
  text("HAS MUERTO :c",400,150);
   text("TOCA BARRA ESPACIADORA PARA REEMPEZAR",400,400);
  }
  if(estado.equals("finalbuenoespada")){
  image(finalbueno,0,0);
  fill(0);
  text("LLEGAS A UNA CUEVA",400,50);
  text("DONDE ENCUENTRAS AL JEFE",400,100);
  text("AL QUE MATAS POR SORPRESA",400,150);
  text("Y DOMINAR A LOS OTROS GOBLINS",400,200);
  fill(255);
  text("SOBREVIVISTE!",400,250);
   text("TOCA BARRA ESPACIADORA PARA REEMPEZAR",400,400);
  }
  if(estado.equals("campamento")){
    
  image(campamento,0,0);
  fill(0);
   text("ENCONTRASTE UN CAMPAMENTO!",400,250);
    text("PARECE SER QUE HAY CIVILIZACIONES AQUI",400,300);
    text("TOCA BARRA ESPACIADORA PARA SEGUIR",400,50);
  }
  if(estado.equals("campamentouno")){
  
  image(campamento,0,0);
  fill(0);
  text("ESTA CAYENDO LA NOCHE ",400,50);
  text("PERO ENCUENTRAS UN CAMINO CON HUELLAS",400,100);
    text("QUE HARAS?",400,150);
   text("QUEDARTE",140,450);
  if ((mouseX>20) && (mouseX < 260) && (mouseY > 440) && (mouseY < 455 )&& mousePressed) {
      estado="finalcampamentomalo";
    }  
 
       text("SEGUIR HUELLAS",680,450);
    if ((mouseX>600) && (mouseX < 840) && (mouseY > 440) && (mouseY < 455 )&& mousePressed) {
      estado="finalbuenocampamento";
    }  
    
  }
   if(estado.equals("finalbuenocampamento")){
  image(campamentodos,0,0);
  fill(255);
  text("ENCUENTRAS UNA COMUNIDAD",400,50);
  text("PACIFICA!",400,100);
  text("TE QUEDAS CON ELLOS Y",400,150);
  text("LOGRAS SOBREVIVIR!",400,200);
   text("TOCA BARRA ESPACIADORA PARA REEMPEZAR",400,400);
  }
   if(estado.equals("finalcampamentomalo")){
  image(monstruo,0,0);
  fill(255);
  text("OH NO TE ENCONTRARON CON UN GRUPO DE GOBLINS",400,50);
  text("POR ESTAR DESARMADO TE ATRAPAN!",400,100);
  text("HAS MUERTO :c",400,150);
   text("TOCA BARRA ESPACIADORA PARA REEMPEZAR",400,400);
  }
  if(estado.equals("caminomalo")){
  image(monstruo,0,0);
  fill(255);
  text("OH NO TE ENCONTRASTE CON UN GRUPO DE GOBLINS",400,50);
  text("POR ESTAR DESARMADO TE ATRAPAN!",400,100);
  text("HAS MUERTO :c",400,150);
   text("TOCA BARRA ESPACIADORA PARA REEMPEZAR",400,400);
  }
}
void keyPressed() {
  if (estado.equals("titulo")) {
    if ( key==' ') {
      estado="pantallauno";
    }
  }
  if(estado.equals("espada")){
  if(key==' '){
  estado="espadados";
  }
  }
  if(estado.equals("finalmaloespada")){
  if ( key==' ') {
      estado="titulo";
    }
  }
   if(estado.equals("finalbuenoespada")){
  if ( key==' ') {
      estado="titulo";
    }
  }
  if(estado.equals("campamento")){
  if ( key==' ') {
      estado="campamentouno";
    }
  }
  if(estado.equals("finalbuenocampamento")){
  if ( key==' ') {
      estado="titulo";
    }
  }
  if(estado.equals("finalcampamentomalo")){
  if ( key==' ') {
      estado="titulo";
    }
  }
  if(estado.equals("caminomalo")){
  if ( key==' ') {
      estado="titulo";
    }
  }
}
