//https://youtu.be/b7lKRN1yq8A
PImage referencia;

boolean colorActivo;


void setup() {

  size(800, 400);

  referencia = loadImage("38.png");

  colorMode(HSB, 360, 100, 100);

  noStroke();
  ellipseMode(CENTER);

  colorActivo = false; 
}

void draw() {
  background(0);
  image(referencia, 0, 0, 400, 400);

  push();
translate(650,200);


 dibujarTunel(14,30);
pop();

}
void dibujarTunel(int cantidadAnillos, int cantidadCirculos) {

  float tono;
  float saturacion;
  float brillo = 100;

  if(colorActivo) {
    tono = map(mouseX,0,width,0,360);
    saturacion = 90;

  } else {

    tono = 0;
    saturacion = 0;


  }

  for(int i=0;i<cantidadAnillos;i++) {
    float radio;

    if(i < 5) {

      radio = 230 - i * 45;


    } else {
      radio = 100 - (i - 5) * 22;

    }

    for(int j=0;j<cantidadCirculos;j++) {

      float ang = TWO_PI / cantidadCirculos * j;
      float x = cos(ang) * radio;
      float y = sin(ang) * radio;

      fill(tono,saturacion,brillo);



      ellipse( x, y, tamañoCirculo(i,cantidadAnillos), tamañoCirculo(i,cantidadAnillos) );

  }


  }


}

float tamañoCirculo(int numeroAnillo,int cantidadAnillos) {

  return map(numeroAnillo,0,cantidadAnillos,22,2);


}

void mouseMoved() {

  colorActivo=true;

}



void mousePressed() {

  colorActivo=false;

}



void keyPressed() {

  colorActivo=false;

}
