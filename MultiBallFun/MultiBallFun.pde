Ball ball = new Ball(250, 250, 25);
Boolean start = false;
void setup() {
  size(501, 500);
  ellipseMode(CENTER);
  screenSizeChecker();
}

void draw () {
  ball.step();
 background(0);
 ellipse(ball.x, ball.y, 25, 25);
startStop();
}

void mouseClicked() {
  ball.targetX = mouseX;
  ball.targetY = mouseY;
}
