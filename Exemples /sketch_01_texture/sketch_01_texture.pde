void setup(){
  size(640, 640);
  noLoop();
}

void draw() {
  background(255);
  noStroke();
  
  for (int i = 0; i < 8000; i++) {
    // randomly draw a point
    // Choose random pos x
    // Choose random pos y
   
    float x = random(0, width);
    float y = random(0, height);
   
    fill(0);
    ellipse(x, y, 3, 3);
  }
  println("draw");
}