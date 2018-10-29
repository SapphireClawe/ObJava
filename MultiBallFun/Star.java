public class Star {
  private int x;
  private int y;
  private int radius;
  
  public int targetX;
  public int targetY;
  
  private static int starCount = 50; 
  private static int maxRadius = 20; 
  
  public Star(int x, int y, int radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.targetX = x;
    this.targetY = y;
  } 
  
  public void step() {
        if (x < targetX) {
      x++;
    } else {
      x--;
    }

    if (y < targetY) {
      y++;
    } else {
      y--;
    }
  }
  public int getStarCount() {
    return starCount;
  }
  public int getX() {
    return x;
  }
  public int getY() {
    return y;
  }
  public int getRadius() {
    return radius;
  }
}
