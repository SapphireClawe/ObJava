private Boolean startKeyboard = false;
private Boolean startMouse = false;
private Star[] stars = new Star[Star.starCount]; 

public void setup() {
  size(500, 600);
  screenSizeChecker();
  ellipseMode(CENTER);

  createStars();
  for (int i = 0; i < stars.length; i++) {
    stars[i].targetX = int (random (width) ); 
    stars[i].targetY = int (random (height) );
  }
  println("Remember to press 's' to start the program");
}

public void draw () {

  if (mousePressed == true) {
    startMouse = true;
  }

  if (startMouse == true) {
    background(0);
    startStop();
    if (startKeyboard==true) {
      for (int i = 0; i < stars.length; i++) {
        stars[i].step();
        ellipse(stars[i].getX(), stars[i].getY(), stars[i].getRadius(), stars[i].getRadius());
      }
    }
  }
}

public void mouseClicked() {
  if (startKeyboard == true) {
    createStars();
    for (int i = 0; i < stars.length; i++) {
      stars[i].targetX = mouseX; 
      stars[i].targetY = mouseY;
    }
  }
}
