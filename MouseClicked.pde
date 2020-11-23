void mouseClicked() {
  if (mouseX > 0 && mouseX < 20 && mouseY > 0 && mouseY < 20) {
    regre = false;
    stx = 0;
    sty = 0;
    fsx = 0;
    fsy = 0;
    ajx = false;
    ajy = false;
    encontrado = 0;
  }

  if (regre == true) {
    for (int i = 0; i < limy; i++) {
      for (int j = 0; j < limx; j++) {
        if (limx>limy) {
          if (ajx == false) {
            if (mouseX>20+((980/limx)*j) && mouseX<20+((980/limx)*(j+1)) && mouseY>20+((980/limx)*i) && mouseY<20+((980/limx)*(i+1)) && ran[i][j] == 1) {
              stx = j;
              sty = i;
              enc[sty][stx] = 2;
              ajx = true;
            }
          } else if (ajx == true && ajy == false) {
            if (mouseX>20+((980/limx)*j) && mouseX<20+((980/limx)*(j+1)) && mouseY>20+((980/limx)*i) && mouseY<20+((980/limx)*(i+1)) && ran[i][j] == 1) {
              fsx = j;
              fsy = i;
              ran[fsy][fsx] = 2;
              encontrado = 1;
              ajy = true;
            }
          }
        } else {
          if (ajx == false) {
            if (mouseX>20+(620/limy)*j && mouseX<20+(620/limy)*(j+1) && mouseY>20+((620/limy)*i) && mouseY<20+((620/limy)*(i+1)) && ran[i][j] == 1) {
              stx = j;
              sty = i;
              enc[sty][stx] = 2;
              ajx = true;
            }
          } else if (ajx == true && ajy == false) {
            if (mouseX>20+(620/limy)*j && mouseX<20+(620/limy)*(j+1) && mouseY>20+((620/limy)*i) && mouseY<20+((620/limy)*(i+1)) && ran[i][j] == 1) {
              fsx = j;
              fsy = i;
              ran[fsy][fsx] = 2;
              ajy = true;
              encontrado = 1;
            }
          }
        }
      }
    }
  }
}
