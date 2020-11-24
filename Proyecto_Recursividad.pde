import ddf.minim.*;

Minim music;
AudioPlayer Player;
byte lol = 0;
int  stx, sty, fsx, fsy, x = 504, ix = -340, credx = 0, aux, auy;
double limx = 20, limy = 20;
float cuaq;
float ran[][] = new float [100][100];
boolean regre = false, error = false, ajx = false, ajy = false, play = false, creditos = false, dont = false;
PImage piso, pared, inicio, tabla, fondo;

void setup () {
  inicio = loadImage("Interfaz1.png");
  pared = loadImage("Pared.png");
  piso = loadImage("Piso.jpeg");
  music = new Minim(this);
  Player = music.loadFile("Musica.mp3");
  fondo = loadImage("fondo.png");
  tabla = loadImage("tabla.png");
  size(1080, 720);
}

void draw () {
  frameRate(60);
  background(inicio);
  if (play == true) {
    if (regre == false) {
      generar();
    }
    dibujar();
    encontrar();
    text(stx, 900, 100);
    text(sty, 900, 120);
    text(fsx, 900, 140);
    text(fsy, 900, 160);
  } else if (creditos == true) {
    credito();
  }
}
