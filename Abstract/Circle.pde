class Circle extends Shape {
  float width;
  float height;
  color c;
  
  Circle (float x, float y, float width, float height, color c) {
    super(x, y);
    this.width = width;
    this.height = height;
    this.c =c;
  }
  void draw() {
    fill(c);
    ellipse(x, y, width, height);
  }
  
  void step() {
    y++;
  }
}
