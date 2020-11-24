void credito() {
  image(fondo, 0, 0);
  frameRate(60);
  Player.play();
  if (x <= 0) {
    for (int i = 0; i < 12; i++) {
      for (int j = 0; j < 16; j++) {
        cuaq = random(0, 1);
        if (cuaq <= 0.33333333) {
          fill(0, 0, 255);
        } else  if (cuaq <= 0.66666666) {
          fill(255, 0, 0);
        } else {
          fill(0, 255, 0);
        }
        rect((float) (660+(320/16)*j), (float) (200+((320/12)*i)), (float) (320/16), (float) (320/12));
      }
    }
  } else if (x <= 68) {
    x--;
    if (ix < 200) {
      ix = ix + 60;
    }
    image(tabla, 660, ix, 320, 314);
  } else {
    x--;
  }
  textSize(48);
  fill(255);
  text("Aqui deberia ir texto", 100, credx);
  text("Aqui deberia ir texto", 100, credx - 150);
  text("Aqui deberia ir texto", 100, credx - 300);
  text("Aqui deberia ir texto", 100, credx - 450);
  text("Aqui deberia ir texto", 100, credx - 600);
  credx++;
}
