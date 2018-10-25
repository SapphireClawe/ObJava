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
    
    ellipse(stars[1-Star.starCount].getX(), stars[1-Star.starCount].getY(), stars[1-Star.starCount].getRadius(), stars[1-Star.starCount].getRadius());
    
  } 
}

public void mouseClicked() {
  createStars();
} 
