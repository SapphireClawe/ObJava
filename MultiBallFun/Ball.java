class Ball {
 private int x = 250;
 private int y = 250;
 private int diameter;
  int targetX;
  int targetY;
  Ball(int x, int y, int diameter) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    targetX = x;
    targetY = y;
  }
  
  void step() {

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
  
 public int getx() {
    return x;
  }
 public int gety() {
    return y;
  }
 public int getdiameter() {
    return diameter;
  }
}
