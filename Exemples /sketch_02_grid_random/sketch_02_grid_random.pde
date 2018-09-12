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
  float deltaY = height / rows;
  
  fill(0);
  for (int i = 0; i < cols; i++) {
    float x = deltaX * i + deltaX / 2;
    drawCol(rows, deltaY, x);
  }
}

void drawCol(int rows, float deltaY, float x){
  for (int j = 0; j < rows; j++) {
    float y = deltaY * j + deltaY / 2;
    ellipse(x, y, 10, 10);
  }
}