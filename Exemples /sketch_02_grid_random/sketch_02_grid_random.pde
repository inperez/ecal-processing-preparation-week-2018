void setup(){
  size(640, 640);
  noLoop();
}

void draw() {
  background(255);
  noStroke();
   
  int cols = 10;
  int rows = 10;
  float deltaX = width / cols; // delta greek for difference
  
  fill(0);
  for (int i = 0; i < cols; i++) {
    float x = deltaX * i + deltaX / 2;
    ellipse(x, height / 2, 10, 10);
  }
   
}