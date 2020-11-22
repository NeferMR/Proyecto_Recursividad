int  start = 0, finish = 0;
double limx = 32, limy = 32;
float ran[][] = new float [100][100];
boolean regre = false, error = false;
PImage piso, pared;

void setup () {
  pared = loadImage("Pared.png");
  piso = loadImage("Piso.jpeg");
  size(1080, 720);
}

void draw () {
  if (regre == false) {
    error = false;
    for (int i = 0; i < limy; i++) {
      for (int j = 0; j < limx; j++) {
        ran[i][j] = random(0, 1);
        if (ran[i][j] <= 0.2) {
          ran[i][j] = 0;
          image(pared, (float) (20+(980/limx)*j), (float) (20+((620/limy)*i)), (float) (980/limx), (float) (620/limy));
        } else {
          ran[i][j] = 1;
          image(piso, (float) (20+(980/limx)*j), (float) (20+((620/limy)*i)), (float) (980/limx), (float) (620/limy));
        }
      }
    }
    regre = true;
  }
}
