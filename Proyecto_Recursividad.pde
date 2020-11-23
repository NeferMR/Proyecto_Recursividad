int  stx, sty, fsx, fsy, encontrado = 0;
double limx = 20, limy = 20;
float ran[][] = new float [100][100];
int enc[][] = new int[100][100];
boolean regre = false, error = false, ajx = false, ajy = false;
PImage piso, pared;

void setup () {
  pared = loadImage("Pared.png");
  piso = loadImage("Piso.jpeg");
  size(1080, 720);
  for(int i = 0; i < 100; i++) {
    for (int j = 0; i < 100; i++) {
       enc[i][j] = 0;
    }
  }
}

void draw () {
  frameRate(3);
  background(255);
  if (regre == false) {
    generar();
  }
  dibujar();
  encontrar();
  text(stx,900,100);
  text(sty,900,120);
  text(fsx,900,140);
  text(fsy,900,160);
}
