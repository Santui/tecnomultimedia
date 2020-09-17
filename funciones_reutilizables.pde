void textos( String texto, float x, float y, int tamTexto) {
  pushStyle();
  textFont(fuente);
  strokeWeight(2);
  textSize(tamTexto);
  textAlign(CENTER, CENTER);
  text(texto, x, y);
  popStyle();
}
boolean btnabajo() {
  boolean resultado = false;

  if ((mouseX>320) && (mouseX < 480) && (mouseY > 573)
    && (mouseY < 588 )) {
    resultado = true;
  } else {
    resultado = false;
  }

  return resultado;
}
boolean btnizq() {
  boolean resultado=false;
  if ((mouseX>20) && (mouseX < 260) && (mouseY > 440) && (mouseY < 455)) {
    resultado=true;
  } else {
    resultado=false;
  }
  return resultado;
}
boolean btnder() {
  boolean resultado=false;
  if ((mouseX>600) && (mouseX < 840) && (mouseY > 440) && (mouseY < 455 )) {
    resultado=true;
  } else {
    resultado=false;
  }
  return resultado;
}
void mousePressed(){ 
 
    if (pantalla==1) { 
      if (btnabajo()) {
        pantalla=2;
      }
    }
  
  if (pantalla==3) { 
    if (btnizq()) {
      pantalla=4;
    } else if (btnder()) {
      pantalla=5;
    } else if (btnabajo()) {
      pantalla=6;
    }
  }

  if (pantalla==7) { 
    if (btnder()) {
      pantalla=8;
    }else if (btnizq()) {
      pantalla=9;
    }
  }
if (pantalla==10) { 
    if (btnder()) {
      pantalla=12;
    }else if (btnizq()) {
      pantalla=11;
    }
  }
  if (pantalla==2) { 
    if (btnizq()) {
      pantalla=1;
    }
  }
}
  void keyPressed() {
    if (pantalla==1) {
      if (key==' ') {
        pantalla=3;
      }
    }
    if (pantalla==4) {
      if (key==' ') {
        pantalla=7;
      }
    }  
    if (pantalla==5) {
      if (key==' ') {
        pantalla=10;
      }
    }  
    if (pantalla==6) {
      if (key==' ') {
        pantalla=1;
      }
    }
     
    if (pantalla==9) {
      if (key==' ') {
        pantalla=1;
      }
    }
     
    if (pantalla==8) {
      if (key==' ') {
        pantalla=1;
      }
    }
    if (pantalla==11) {
      if (key==' ') {
        pantalla=1;
      }
    }
    if (pantalla==12) {
      if (key==' ') {
        pantalla=1;
      }
    }
  }
  
