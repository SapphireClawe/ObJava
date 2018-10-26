private Boolean start = false;
private Star[] stars = new Star[Star.getStarCount()]; 
Ball ball = new Ball(250, 250, 25);
public void setup() {
  size(500, 600);
  screenSizeChecker();
  ellipseMode(CENTER);

  createStars();
  
}

 public void draw () {
   
  startStop();
    if (start==true) {

    background(0);
    for (int i = 0; i < stars.length; i++) {
      ellipse(stars[i].getX(), stars[i].getY(), stars[i].getRadius(), stars[i].getRadius());
    }
  }
  ball.step();
 background(0);
 ellipse(ball.getx(), ball.gety(), ball.getdiameter(), ball.getdiameter());

}

public void mouseClicked() {
  createStars();
  ball.targetX = mouseX;
  ball.targetY = mouseY;
}
