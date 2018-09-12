float x;
float y;

void setup(){
  size(640, 640);
  x = width / 2;
  y = height / 2;
  noLoop();
}

void draw() {
  //background(255);
  
  for (int i = 0; i < 100000; i++) {
    fill(0);
    ellipse(x, y, 1, 1);
    int step = 5;
    x = x + random(-step, step);
    y = y + random(-step, step);
    
    // Vertical 
    if (y > height) {
      y = 0;
    }
    
    if (y < 0) {
      y = height;
    }
    
    // Horizontal
    if (x > width) {
      x = 0;
    }
    
    if (x < 0) {
      x = width;
    }
  }
}