Ball ball = new Ball(250, 250, 25);

void setup() {
  size(500, 500);
  ellipseMode(CENTER);
}

void draw () {
  ball.step();
 background(0);
 ellipse(ball.getx(), ball.gety(), ball.getdiameter(), ball.getdiameter());

}

void mouseClicked() {
  ball.targetX = mouseX;
  ball.targetY = mouseY;
}
