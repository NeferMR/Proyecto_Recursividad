void mouseClicked() {
  if (play == false && creditos == false) {
    if (mouseX>102 && mouseX<407 && mouseY>194 && mouseY<266) {
      play = true;
    }

    if (mouseX>102 && mouseX<407 && mouseY>294 && mouseY<366) {
      creditos = true;
    }

    if (mouseX>102 && mouseX<407 && mouseY>394 && mouseY<466) {
      exit();
    }
  } else if (play == true) {
    if (mouseX > 1000 && mouseX < 1080 && mouseY > 0 && mouseY < 80) {
      regre = false;
      stx = 0;
      sty = 0;
      fsx = 0;
      fsy = 0;
      ajx = false;
      ajy = false;
      lol = 0;
    }

    if (regre == true) {
      for (int i = 0; i < limy; i++) {
        for (int j = 0; j < limx; j++) {
          if (limx>limy) {
            if (ajx == false) {
              if (mouseX>20+((980/limx)*j) && mouseX<20+((980/limx)*(j+1)) && mouseY>20+((980/limx)*i) && mouseY<20+((980/limx)*(i+1)) && ran[i][j] == 1) {
                stx = j;
                sty = i;
                aux = j;
                auy = i;
                ajx = true;
              }
            } else if (ajx == true && ajy == false) {
              if (mouseX>20+((980/limx)*j) && mouseX<20+((980/limx)*(j+1)) && mouseY>20+((980/limx)*i) && mouseY<20+((980/limx)*(i+1)) && ran[i][j] == 1) {
                fsx = j;
                fsy = i;
                lol = 1;
                ajy = true;
              }
            }
          } else {
            if (ajx == false) {
              if (mouseX>20+(620/limy)*j && mouseX<20+(620/limy)*(j+1) && mouseY>20+((620/limy)*i) && mouseY<20+((620/limy)*(i+1)) && ran[i][j] == 1) {
                stx = j;
                sty = i;
                aux = j;
                auy = i;
                ajx = true;
              }
            } else if (ajx == true && ajy == false) {
              if (mouseX>20+(620/limy)*j && mouseX<20+(620/limy)*(j+1) && mouseY>20+((620/limy)*i) && mouseY<20+((620/limy)*(i+1)) && ran[i][j] == 1) {
                fsx = j;
                fsy = i;
                ajy = true;
                lol = 1;
              }
            }
          }
        }
      }
    }
    if (mouseX>0 && mouseX<100 && mouseY>0 && mouseY<100) {
      play = false;
      creditos = false;
    }
  } else if (creditos == true) {
    if (mouseX>0 && mouseX<100 && mouseY>0 && mouseY<100) {
      play = false;
      creditos = false;
    }
    Player.rewind();
    Player.pause();
    x = 504;
    ix = -340;
    credx = 0;
  }
}
