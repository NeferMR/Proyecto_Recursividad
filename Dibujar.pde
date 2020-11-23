void dibujar() {
  for (int i = 0; i < limy; i++) {
    for (int j = 0; j < limx; j++) {
      if (ran[i][j] == 0) {
        if (limx>limy) {
          image(pared, (float) (20+(980/limx)*j), (float) (20+((980/limx)*i)), (float) (980/limx), (float) (980/limx));
        } else {
          image(pared, (float) (20+(620/limy)*j), (float) (20+((620/limy)*i)), (float) (620/limy), (float) (620/limy));
        }
      } else {
        if (limx>limy) {
          image(piso, (float) (20+(980/limx)*j), (float) (20+((980/limx)*i)), (float) (980/limx), (float) (980/limx));
        } else {
          image(piso, (float) (20+(620/limy)*j), (float) (20+((620/limy)*i)), (float) (620/limy), (float) (620/limy));
        }
      }
    }
  }
  regre = true;
  if (limx>limy) {
    if (ajx == true) {
      fill(255, 0, 0);
      rect((float) (20+(980/limx)*stx), (float) (20+((980/limx)*sty)), (float) (980/limx), (float) (980/limx));
    }
    if (ajy == true) {
      fill(0, 0, 255);
      rect((float) (20+(980/limx)*fsx), (float) (20+((980/limx)*fsy)), (float) (980/limx), (float) (980/limx));
    }
  } else {
    if (ajx == true) {
      fill(255, 0, 0);
      rect((float) (20+(620/limy)*stx), (float) (20+((620/limy)*sty)), (float) (620/limy), (float) (620/limy));
    }
    if (ajy == true) {
      fill(0, 0, 255);
      rect((float) (20+(620/limy)*fsx), (float) (20+((620/limy)*fsy)), (float) (620/limy), (float) (620/limy));
    }
  }
}
