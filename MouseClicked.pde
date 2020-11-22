void mouseClicked() {
  if (mouseX > 0 && mouseX < 20 && mouseY > 0 && mouseY < 20) {
    regre = false;
    start = 0;
    finish = 0;
  }

  if (regre == true) {
    for (int i = 0; i < limy; i++) {
      for (int j = 0; j < limx; j++) {
        if (start == 0) {
          if (mouseX>20+((980/limx)*j) && mouseX<20+((980/limx)*(j+1)) && mouseY>20+((620/limy)*i) && mouseY<20+((620/limy)*(i+1)) && ran[i][j] == 1) {
            fill(255, 0, 0);
            rect((float) (20+(980/limx)*j), (float) (20+((620/limy)*i)),(float) (980/limx),(float) (620/limy));
            start = 1;
          }
        } else if (start == 1 && finish == 0) {
          if (mouseX>20+((980/limx)*j) && mouseX<20+((980/limx)*(j+1)) && mouseY>20+((620/limy)*i) && mouseY<20+((620/limy)*(i+1)) && ran[i][j] == 1) {
            fill(0, 0, 255);
            rect((float) (20+(980/limx)*j), (float) (20+((620/limy)*i)),(float) (980/limx),(float) (620/limy));
            finish = 1;
          }
        }
      }
    }
  }
}
