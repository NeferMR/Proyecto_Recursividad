void encontrar() {
  if (encontrado == 1) {
    if (enc[sty][stx] == ran[sty][stx]) {
      encontrado = 6;
    } else if ((stx < limx) && (ran[sty][stx+1] != 0 && enc[sty][stx+1] <= enc[sty+1][stx] && enc[sty][stx+1] <= enc[sty][stx-1] && enc[sty][stx+1] <= enc[sty-1][stx])) {
      enc[sty][stx+1] = 2;
      enc[sty][stx]++;
      stx++;
    } else if (sty < limy && ran[sty+1][stx] != 0 && enc[sty+1][stx] <= enc[sty][stx-1] && enc[sty+1][stx] <= enc[sty][stx-1]) {
      enc[sty+1][stx] = 2;
      enc[sty][stx]++;
      sty++;
    } else if (stx > 0 && ran[sty][stx-1] != 0 && enc[sty][stx-1] <= enc[sty][stx-1]) {
      enc[sty][stx-1] = 2;
      enc[sty][stx]++;
      stx--;
    } else if (sty > 0 && ran[sty-1][stx] != 0) {
      enc[sty-1][stx] = 2;
      enc[sty][stx]++;
      sty--;
    }
  } else if (encontrado == 6) {
    text("Encontrado", 900, 190);
  }
}
