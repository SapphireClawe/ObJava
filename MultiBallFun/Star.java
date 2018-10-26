class Star {
  private float x;
  private float y;
  private float radius;
  
  private static int starCount = 50; 
  private static int maxRadius = 20; 
  
  public Star(float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
  } 
  public static int getStarCount() {
    return starCount;
  }
  public static int getMaxRadius() {
    return maxRadius;
  }
  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getRadius() {
    return radius;
  }
}
