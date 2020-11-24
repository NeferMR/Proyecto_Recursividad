void encontrar() {
  if (dont == true) {
    sty = auy;
    stx = aux;
    dont = false;
  }
  if (sty == fsy && stx == fsx) {
    text("Encontrado", 900, 190);
    lol = 10;
  } else if (lol == 1) {
    if (stx < fsx && ran[sty][stx+1] != 0) {
      stx++;
    } else if (stx > fsx && ran[sty][stx-1] != 0) {
      stx--;
    } else if (sty < fsy && ran[sty+1][stx] != 0) {
      sty++;
    } else if (sty > fsy && ran[sty-1][stx] != 0) {
      sty--;
    } else {
      lol = 2;
      dont = true;
    }
  } else if (lol == 2) {
    if (sty < fsy && ran[sty+1][stx] != 0) {
      sty++;
    } else if (sty > fsy && ran[sty-1][stx] != 0) {
      sty--;
    } else if (stx < fsx && ran[sty][stx+1] != 0) {
      stx++;
    } else if (stx > fsx && ran[sty][stx-1] != 0) {
      stx--;
    } else {
      lol = 1;
      dont = true;
      generar();
    }
  }  
}
