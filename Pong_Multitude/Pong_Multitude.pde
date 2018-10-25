private Boolean start = false;
private Star[] stars = new Star[Star.starCount]; 
public void setup() {
  size(500, 600);
  screenSizeChecker();
  ellipseMode(CENTER);
  
 
  createStars();
  
} 

public void draw() {
  startStop();

  if (start==true) {
    
    background(0);
    for (int i = 0; i < stars.length; i++) {
    ellipse(stars[i].getX(), stars[i].getY(), stars[i].getRadius(), stars[i].getRadius());
    
  } 
}

public void mouseClicked() {
  createStars();
} 
