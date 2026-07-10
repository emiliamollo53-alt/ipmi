//https://youtu.be/nKFpJPb_p2o
PImage original;

boolean colorCambia;

void setup() {
size(800, 400);
original = loadImage("38.png");
colorMode(HSB, 360, 100, 100);
noStroke();
ellipseMode(CENTER);
reiniciar();
}

void draw() {
background(0);
image(original, 0, 0, 400, 400);
dibujarTunel(650, 200);
}



void dibujarTunel(float centroX, float centroY) {
float tono;
float saturacion;
float brillo = 100;

if (colorCambia) {
tono = map(mouseX, 0, width, 0, 360);
saturacion = 90;
} else {
tono = 0;
saturacion = 0;
}

pushMatrix();
translate(centroX, centroY);
rotate(0.01);


for (int i = 0; i < 10; i++) {
float radio = 18 + i * 26; 
float tam = calcularTam(i);


for (int j = 0; j < 24; j++) {
dibujarLugarAnillo(j, radio, tam, tono, saturacion, brillo);
}
}

popMatrix();

float d = dist(mouseX, mouseY, centroX, centroY);
float r = random(1);
}



float calcularTam(int i) {
return map(i, 0, 9, 14, 24);
}


void dibujarLugarAnillo(int j, float radio, float tam, float tono, float saturacion, float brillo) {
float x = 0;
float y = 0;


if (j == 0) { x = 0; y = -radio; }
if (j == 1) { x = radio*0.25; y = -radio*0.97; }
if (j == 2) { x = radio*0.5; y = -radio*0.87; }
if (j == 3) { x = radio*0.7; y = -radio*0.72; }
if (j == 4) { x = radio*0.87; y = -radio*0.5; }
if (j == 5) { x = radio*0.97; y = -radio*0.25; }

if (j == 6) { x = radio; y = 0; }
if (j == 7) { x = radio*0.97; y = radio*0.25; }
if (j == 8) { x = radio*0.87; y = radio*0.5; }
if (j == 9) { x = radio*0.7; y = radio*0.72; }
if (j == 10) { x = radio*0.5; y = radio*0.87; }
if (j == 11) { x = radio*0.25; y = radio*0.97; }

if (j == 12) { x = 0; y = radio; }
if (j == 13) { x = -radio*0.25; y = radio*0.97; }
if (j == 14) { x = -radio*0.5; y = radio*0.87; }
if (j == 15) { x = -radio*0.7; y = radio*0.72; }
if (j == 16) { x = -radio*0.87; y = radio*0.5; }
if (j == 17) { x = -radio*0.97; y = radio*0.25; }

if (j == 18) { x = -radio; y = 0; }
if (j == 19) { x = -radio*0.97; y = -radio*0.25; }
if (j == 20) { x = -radio*0.87; y = -radio*0.5; }
if (j == 21) { x = -radio*0.7; y = -radio*0.72; }
if (j == 22) { x = -radio*0.5; y = -radio*0.87; }
if (j == 23) { x = -radio*0.25; y = -radio*0.97; }

fill(tono, saturacion, brillo);
ellipse(x, y, tam, tam);
}


void reiniciar() {
colorCambia = false;
}


void mouseMoved() {
colorCambia = true;
}

void mousePressed() {
reiniciar();
}

void keyPressed() {
reiniciar();
}
