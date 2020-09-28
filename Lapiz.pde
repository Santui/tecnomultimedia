class Lapiz{

//VARIABLES LOCALES
  float grosor;
  color colorcito;
  
  //constructor
  Lapiz( float g ){
    //inicializar las variables
    colorcito = color(0);
    grosor = g;
  }
  
//FUNCIONES LOCALES
  void dibujar(){
    stroke( colorcito );
    strokeWeight( grosor );
    line( pmouseX, pmouseY, mouseX, mouseY );
  }
  
  void visualizar(){  //muestro en pantalla color y grosor seleccionado
    noStroke();
    fill( 255 );
    rect( 0, 0, 50, 50 );
    fill( colorcito );
    ellipse( 25, 25, grosor, grosor);
   
  }
  
  void cambiarColor(){
    if( key == 'r' )
      colorcito = color(255, 0, 0 );
    if( key == 'g' )
      colorcito = color(0, 255, 0 );
    if( key == 'b' )
      colorcito = color(0, 0, 255 );
  }
  
  void aumentarGrosor(){
    if( key == '+' ){
      grosor++;
    }
  }
  void disminuirGrosor(){
    if( key == '-' ){
      grosor--;
    }
  }
}
