
class Juego {
  Fondo fondo; 
  Link link; 
  int cant; 
  int numFondo;
  boolean moviendo;
  float vel;
  Malo [] malo; // arreglo de "enemigos"
  String estado;
  int nivel, tiempo, choques;
  Boton botInstrucc, botJugar, botCreditos, botSalir; 
  Juego() {
    cant = 4;
    fondo = new Fondo();
    link = new Link();
    estado = "inicio";
    nivel = 2;
    vel = 1;
    choques = 0;
    moviendo = true;
   malo = new Malo[cant];
    for (int i=0; i<cant; i++) {
      malo[i] = new Malo(200+ i* 100 );
    }


    botInstrucc = new Boton(0, height-50, 150, "Como jugar?");
    botCreditos = new Boton(0, height-50, 100, "creditos");
    botJugar = new Boton(width-100, height-50, 100, "A jugar");
    botSalir = new Boton(width-100, height-50, 100, "salir");
  }


  void dibujar() {


    fondo.dibujarFondo(numFondo, vel); 


    if (estado.equals("jugando")) {
      chocar(); 
      if (moviendo) {
        timer();
        if (nivel==1) {
          numFondo = 2;
          vel = 3;
        }


        link.dibujarLink();

        for (int i=0; i<cant; i++) {
          malo[i].dibujarMalo();
          malo[i].moverMalo(vel);
        }

        fill(0, 20, 255, 200);
        rect(0, 0, 250, 50);
        fill(255);
        text("tiempo:" + tiempo +" / choques: " +choques, 125, 25);
      }
    }




    //------------------------- ESTADOS -----------------------//
    if (estado.equals("inicio")) {
      numFondo = 0;
      botInstrucc.dibujar();
    }

    if (estado.equals("instrucciones")) {
      numFondo = 1;
      botJugar.dibujar();
    }


    if (estado.equals("gana")) {
      numFondo = 4;
      botCreditos.dibujar();
      botSalir.dibujar();
    }

    if (estado.equals("pierde")) {
      numFondo = 5;
      botCreditos.dibujar();
      botSalir.dibujar();
    }

    if (estado.equals("creditos")) {
     
fill(0);
    text("INSPIRADO EN", 400,100,25);
    text("THE LEGEND OF ZELDA", 400, 150,25);
    text("CREADOR", 400, 200,25);
    text("SANTIAGO OLAVARRIA", 400, 250,25);
    text("SONIDO", 400, 350,25);
    text("OCARINA OF TIME", 400,400,25);
    fill(255);
    text("IMAGENES", 400, 450,25);
    text("SACADAS DEL PROPIO VIDEOJUEGO", 400, 500,25);
    text("MANIPULADAS CON PS", 400, 550,25);
    
      numFondo = 3;
      botJugar.dibujar();
      botInstrucc.dibujar();
    }
  }

  //------------------ COLISIÓN ------------- //
  void chocar() {
    for (int i=0; i<cant; i++) {

      boolean chocan = dist(link.ax, link.ay, malo[i].cx, malo[i].cy)<50 == true; 

      if (chocan && malo[i].contacto) { 
        choques ++;
        malo[i].contacto = false; 
        audiotres.play();
        audiotres.rewind();
        
      }
    }
    if (choques > 3) {
      estado = "pierde";
    }
  }


  void timer() {
    if (frameCount%60==0) { 
      tiempo++;
    }
    if (tiempo<19) {
      nivel = 1;
    }


    if (tiempo>=40) {
      estado = "gana";
    }
  }


  // --- acciones de los botones --//

  void botones() {
    if (botInstrucc.botonPress(0, height-50, 150) && estado.equals("inicio") || estado.equals("creditos")) {
      estado = "instrucciones";
      nivel = 1;
      audiodos.play();
      audiodos.rewind();
    }
    if (botJugar.botonPress(width-100, height-50, 100) && estado.equals("instrucciones") || estado.equals("creditos")) {
      estado = "jugando";
      nivel = 1;
      tiempo = 0;
      choques = 0;
      moviendo = true;
      audiocuatro.play();
      audiocuatro.rewind();
    }
   
    if (botCreditos.botonPress(0, height-50, 100) && estado.equals("gana") || estado.equals("pierde")) {
      moviendo = false;
      estado = "creditos";
    }

    if (botSalir.botonPress(width-100, height-50, 100) && estado.equals("gana") || estado.equals("pierde")) {
      exit();
    }
  }

  void moverLink(int tecla) { //
    if (tecla==UP && link.ay >280 ) { // controla las teclas y un límite superior
      link.subirCarril();
    }
    if (tecla == DOWN && link.ay <480) {
      link.bajarCarril();
    }
  }
}
