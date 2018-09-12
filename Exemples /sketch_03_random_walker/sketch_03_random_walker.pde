float x;
float y;

void setup(){
  size(640, 640);
  x = width / 2;
  y = height / 2;
}

void draw() {
  //background(255);
  
  for (int i = 0; i < 100; i++) {
    fill(0);
    ellipse(x, y, 1, 1);
    int step = 5;
    x = x + random(-step, step);
    y = y + random(-step, step);
    
    
  }
}