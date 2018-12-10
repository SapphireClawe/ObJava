ArrayList<Shape> shapes = new ArrayList<Shape>();
Circle cHex;
void setup() {
  size (500, 500);

  Rectangle rRGB = new Rectangle(width*1/4, height*1/4, width*2/4, height*2/4, color(144, 195, 212) );
  Rectangle rHex = new Rectangle(width*1/4, height*1/4, width*2/4, height*2/4, #90C3D4);

  //Circle cRGB = new Circle(width*2/4, height*2/4, width*1/4, height*1/4, color(153, 64, 237) );
   cHex = new Circle(width*2/4, height*2/4, width*1/4, height*1/4, #9940ED);
  
  shapes.add(rRGB);
  shapes.add(rHex);
  //shapes.add(cRGB);
  shapes.add(cHex);
}

void draw() {
  background (255);
  
  //Draw Static Shapes
  for (int i=0; i<shapes.size(); i++) {
    shapes.get(i).draw();
  }
  
  cHex.step();
  shapes.get(2).draw();
}

abstract class Shape {
  float x;
  float y;

  Shape(float x, float y) {
    this.x = x;
    this.y = y;
  }

  abstract void draw();
}
