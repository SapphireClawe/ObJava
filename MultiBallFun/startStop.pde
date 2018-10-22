void startStop() {
  if (keyPressed) {
    if (key == 's' || key == 'S') {
      start = true;
    }
  }

  if (keyPressed) {
    if (key == 'q' || key == 'Q') {
      println ("The canvas has exited.");
      exit();
    }
  }
}
