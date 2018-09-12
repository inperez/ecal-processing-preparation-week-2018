float x;
float y;

void setup(){
  size(640, 640);
  x = width / 2;
  y = height / 2;
}

void draw() {
  //background(255);
  
  for (int i = 0; i < 1; i++) {
    fill(0);
    ellipse(x, y, 1, 1);
    int step = 20;
    
    float xStep = random(-step, step);
    float yStep = step - abs(xStep);
    
    // negative sometimes
    int multiplier = 0; // -1 or 1
    if (random(10) < 5) {
      multiplier = 1;
    } else {
      multiplier = -1;
    }
    yStep = yStep * multiplier;
    
    x = x + xStep;
    y = y + yStep;

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