void generar() {
  for (int i = 0; i < limy; i++) {
    for (int j = 0; j < limx; j++) {
      ran[i][j] = random(0, 1);
      if (ran[i][j] <= 0.25) {
        ran[i][j] = 0;
      } else {
        ran[i][j] = 1;
      }
    }
  }
}
