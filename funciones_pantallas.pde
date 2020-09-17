void pantalla1() { //titulo
  image(imagen[4],0, 0);
  fill(255);
  textos("AVENTURAS EN LA ISLA QUIEN", width/2, height/2, 40);
  noFill();
  rect(333, 557, 135, 40);
  textos("CREDITOS", 400, 580, 25);
  textos("TOCA BARRA ESPACIADORA PARA EMPEZAR", 400, 50, 30);
}
void pantalla2() { //creditos
  creditos();
}
void pantalla3() { //primer pantalla
  image(imagen[6], 0, 0);
  fill(0);
  textos("ACABAS DE SER TRANSPORTADO A LA ISLA QUIEN", 400, 50, 25);
  textos("UN LUGAR LLENO DE PELIGROSAS CRIATURAS", 400, 100, 25);
  textos("QUE DEBERIAS HACER?", 400, 150, 25);
  textos("Salir a explorar la playa", 140, 450, 25);
  textos("Explorar el bosque", 700, 450, 25);
  textos("Quedarse ahi", 400, 580, 25);
}
void pantalla4() { //primer pantalla 1 espada
  image(imagen[2], 0, 0);
  textos("ENCONTRASTE UNA ESPADA!", 400, 250, 25);
  textos("ESTO PUEDE SERVIRTE MAS ADELANTE", 400, 300, 25);
  textos("TOCA BARRA ESPACIADORA PARA SEGUIR", 400, 50, 25);
}
void pantalla5() { //primer pantalla 2 campamento
  image(imagen[0], 0, 0);
  fill(0);
  textos("ENCONTRASTE UN CAMPAMENTO!", 400, 250, 25);
  textos("PARECE SER QUE HAY CIVILIZACIONES AQUI", 400, 300, 25);
  textos("TOCA BARRA ESPACIADORA PARA SEGUIR", 400, 50, 25);
}
void pantalla6() { //primer pantalla 3 muerto :v
  image(imagen[5], 0, 0);
  fill(255);
  textos("OH NO TE ENCONTRASTE CON UN GRUPO DE GOBLINS", 400, 50, 25);
  textos("POR ESTAR DESARMADO TE ATRAPAN!", 400, 100, 25);
  textos("HAS MUERTO :c", 400, 150, 25);
  textos("TOCA BARRA ESPACIADORA PARA REEMPEZAR", 400, 400, 25);
}
void pantalla7() { //espada 1
  image(imagen[2], 0, 0);
  fill(0);
  textos("ESTA CAYENDO LA NOCHE Y QUEDARSE NO ES UNA OPCION", 400, 50, 25);
  textos("PERO ENCUENTRAS DOS CAMINOS", 400, 100, 25);
  textos("QUE HARAS?", 400, 150, 25);
  textos("IR POR LA IZQUIERDA", 140, 450, 25);
  textos("IR POR LA DERECHA", 680, 450, 25);
}
void pantalla8() { //espada der bueno
  image(imagen[5], 0, 0);
  fill(0);
  textos("LLEGAS A UNA CUEVA", 400, 50, 25);
  textos("DONDE ENCUENTRAS AL JEFE", 400, 100, 25);
  textos("AL QUE MATAS POR SORPRESA", 400, 150, 25);
  textos("Y DOMINAR A LOS OTROS GOBLINS", 400, 200, 25);
  fill(255);
  textos("SOBREVIVISTE!", 400, 250, 25);
  textos("TOCA BARRA ESPACIADORA PARA REEMPEZAR", 400, 400, 25 );
}
void pantalla9() { //espada izq malo
  image(imagen[5], 0, 0);
  fill(255);
  textos("OH NO TE ENCONTRASTE CON UN GRUPO DE GOBLINS", 400, 50, 25);
  textos("Y TE ATRAPARON POR SORPRESA", 400, 100, 25);
  textos("HAS MUERTO :c", 400, 150, 25);
  textos("TOCA BARRA ESPACIADORA PARA REEMPEZAR", 400, 400, 25);
}
void pantalla10() { //campamento 1
  image(imagen[0], 0, 0);
  fill(0);
  textos("ESTA CAYENDO LA NOCHE ", 400, 50, 25);
  textos("PERO ENCUENTRAS UN CAMINO CON HUELLAS", 400, 100, 25);
  textos("QUE HARAS?", 400, 150, 25);
  textos("QUEDARTE", 140, 450, 25);
  textos("SEGUIR HUELLAS", 680, 450, 25);
}
void pantalla11() { //campamento 2 izq malo
  image(imagen[5], 0, 0);
  fill(255);
  textos("OH NO TE ENCONTRARON CON UN GRUPO DE GOBLINS", 400, 50, 25);
  textos("POR ESTAR DESARMADO TE ATRAPAN!", 400, 100, 25);
  textos("HAS MUERTO :c", 400, 150, 25);
  textos("TOCA BARRA ESPACIADORA PARA REEMPEZAR", 400, 400, 25);
}
void pantalla12() { //campamento 3 der bueno
  image(imagen[1], 0, 0);
  fill(255);
  textos("ENCUENTRAS UNA COMUNIDAD", 400, 50, 25);
  textos("PACIFICA!", 400, 100, 25);
  textos("TE QUEDAS CON ELLOS Y", 400, 150, 25);
  textos("LOGRAS SOBREVIVIR!", 400, 200, 25);
  textos("TOCA BARRA ESPACIADORA PARA REEMPEZAR", 400, 400, 25);
}
void pantalla13() { //campamento 1
  image(imagen[0], 0, 0);
}
void pantalla14() { //campamento 1
  image(imagen[0], 0, 0);
}
