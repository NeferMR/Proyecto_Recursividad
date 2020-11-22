{
  for (int i = 0; i < limy; i++) {
      for (int j = 0; j < limx; j++) {
        if (start == 0) {
          if (mouseX>20+(62*j) && mouseX<20+((62*j)+62) && mouseY>20+(62*i) && mouseY<20+((62*i+62)) && ran[i][j] == 1) {
            fill(255, 0, 0);
            rect(20+(62*j), 20+(62*i), 62, 62);
            start = 1;
          }
        } else if (ran[i][j] == 1 && start == 1) {
          fill(0, 0, 255);
          rect(20+(62*j), 20+(62*i), 62, 62);
          finish = 1;
        }
      }
    }
}
