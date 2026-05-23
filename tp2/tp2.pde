
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;

PFont fuente;

int estado;

int marcaDeTiempo;

float contador;

float posXTexto;
float posYTexto;

float opacidadTexto;
float opacidadImagen;

float posXImagen;
float posYImagen;

float tamRect;
int tamBotonR;

float posXBotonR;
float posYBotonR;

float distBotonR;

boolean botonRActivado;


void setup(){

size(640,480);

img1 = loadImage("descarga.jpg");
img2 = loadImage("descarga (1).jpg");
img3 = loadImage("descarga (2).jpg");
img4 = loadImage("descarga (3).jpg");
img5 = loadImage("descarga (4).jpg");

fuente=loadFont("Arial-BoldMT-32.vlw");
textFont(fuente);
textAlign(CENTER,CENTER);

estado = 1;
marcaDeTiempo = frameCount;
 
tamBotonR = 90;
posXBotonR = width/2;
posYBotonR = 340;

contador=0;
posXTexto = -300;
posYTexto = height + 100;

opacidadTexto = 0;
opacidadImagen = 0;

posXImagen = 0;
posYImagen = 0;

tamRect = 0;
}


void draw(){

background(0);

contador = frameCount - marcaDeTiempo;


// pantalla uno presentacion de la serie 

if(estado == 1){

opacidadImagen = map(contador,0,100,0,255);
tint(255, opacidadImagen);
image(img1,0,0,width,height);
fill(0,180);
rect(20,40,600,90,20);

posXTexto = map(contador,0,120,-300,width/2);
opacidadTexto = map(contador,0,120,0,255);
fill(255,opacidadTexto);

textSize(32);

text("Serie estadounidense lanzada el 10 de septiembre del 2009" ,posXTexto,80);
if(contador > 250){
estado = 2;
marcaDeTiempo = frameCount;
}
}

// pantalla dos Elena

if(estado == 2){
background(0);
if(contador < 180){

posYImagen = map(contador,0,180,-400,40);
}
else{

posYImagen = 40;
}

image(img2,120,posYImagen,400,250);
float posYRect;
if(contador < 180){

posYRect = map(contador,0,180,height+200,330);
}
else{

posYRect = 330;
}
fill(120,0,0);
rect(60,posYRect,520,110,20);

float posYTextoElena;
if(contador < 180){
posYTextoElena = map(contador,0,180,height+300,380);
}
else{

posYTextoElena = 380;
}

fill(255);
textSize(13);
text("Elena Gilbert se ve atrapada\nentre Stefan y Damon Salvatore. \ndescubre que posee un vínculo especial con el mundo sobrenatural, \nse convierte en un importante catalizador en la lucha entre el bien y el mal.",width/2,posYTextoElena);

if(contador > 600){
estado = 3;
marcaDeTiempo = frameCount;
}
}

if(estado == 3){

background(0);


if(contador < 120){
tamRect = map(contador,0,120,0,width);
}
else{

tamRect = width;
}
fill(120,0,0);
rect(0,0,tamRect,height);
if(contador < 180){

opacidadImagen = map(contador,0,180,0,255);
}
else{

opacidadImagen = 255;
}
tint(255,opacidadImagen);
image(img3,170,40,300,260);
if(contador < 260){

posYTexto = map(contador,120,260,height+100,380);
}
else{

posYTexto = 380;
}
fill(0);
rect(120,330,400,100,20);

fill(216,205,206);
textSize(10);
text("Stefan Salvatore es un vampiro bondadoso y cariñoso  \ntodo lo contrario de su hermano mayor, Damon Salvatore. Más adelante en la serie, \nStefan regresa a sus antiguas costumbres como Destripador para salvar a Damon \nde la mordedura de un hombre lobo. ",width/2,posYTexto);

if(contador > 650){
estado = 4;
marcaDeTiempo = frameCount;
contador=0;
}
}
// pantalla cuatro Damon
if(estado == 4){

background(147,6,8);
if(contador < 180){

posXImagen = map(contador,0,180,-400,60);
}
else{

posXImagen = 60;
}
stroke(0);
image(img4,posXImagen,90,250,260);

float posXRect;
float posXTextoDamon;
if(contador < 180){
posXRect = map(contador,0,180,width+500,340);
posXTextoDamon = map(contador,0,180,width+500,450);
}
else{

posXRect = 340;

posXTextoDamon = 450;
}

stroke(0);
fill(120,0,0);
rect(posXRect,180,240,120,20);

fill(255);
textSize(8);
text("Damon Salvatore el hermano mayor\nvampiro de Stefan Mayormente se lo considera egoísta y manipulador, \nusando a los humanos para su propio beneficio sin consideración, \npero más tarde comienza a mostrar un lado más afectuoso",posXTextoDamon,240);
if(contador > 600){
estado = 5;
marcaDeTiempo = frameCount;
contador=0;
}
}
// pantalla cinco Bonnie 
if(estado == 5){

background(147,6,8);

if(contador < 180){
posYImagen = map(contador,0,180,height+300,80);
}
else{

posYImagen = 80;
}

image(img5,180,posYImagen,260,220);

float posYRectBonnie;
if(contador < 180){
posYRectBonnie = map(contador,0,180,height+400,330);
}
else{

posYRectBonnie = 330;
}
fill(120,0,0);

rect(120,posYRectBonnie,400,100,20);

float posYTextoBonnie;
if(contador < 180){
posYTextoBonnie = map(contador,0,180,height+500,380);
}
else{

posYTextoBonnie = 380;
}
stroke(0);
fill(255);
textSize(8);
text("Bonnie Bennett la mejor amiga de Elena y Caroline  y una bruja muy poderosa. \nHa muerto en numerosas ocasiones, pero siempre ha encontrado la manera de regresar. \nDesarrolla y controla sus poderes con la ayuda de su abuela, \nSheila , otra bruja de la familia Bennett.",width/2,posYTextoBonnie);
if(contador > 600){
estado = 6;
marcaDeTiempo = frameCount;
}
}
// pantalla 6 fin

if(estado == 6){
background(203,2,19);
fill(44,59,52);
rect(120,100,400,250,30);
fill(0);
textSize(42);
text("fin",width/2,170);
textSize(10);
text("La podes encontrar tanto en amazon prime como en netflix",width/2,230);
distBotonR = dist(mouseX,mouseY,posXBotonR,posYBotonR);
if(distBotonR < tamBotonR/2){

fill(97,106,108);
}
else{

fill(0,0,255);
}
circle(posXBotonR,posYBotonR,tamBotonR);
stroke(0);
fill(100,5,35);
textSize(16);
text("REINICIAR",posXBotonR,posYBotonR);
}
}




void mousePressed(){

if(estado == 6){

if(distBotonR < tamBotonR/2){

botonRActivado = true;
}
}

if(botonRActivado == true){

estado = 1;

marcaDeTiempo = frameCount;

botonRActivado = false;
}
}
