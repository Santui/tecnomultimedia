class Pantalla{
  int x, y;
int cantImag=17;
PImage[]images;
int numPant;
float tam,tam2;
Pantalla(){
 
  images= new PImage[cantImag];
  for(int i=0; i< images.length;i++){
  images[i] = loadImage("imagen_"+i+".png");
  }
}
void dibujarPant(int numPant_, int x_, int y_){
  numPant=numPant_;
  x=x_;
  y=y_;
image(images[numPant],x,y,width,height);
}
}
