int t = 0; // t like time

void setup() {
  size(640, 640);
  background(0);
}

void draw() {
  t = t + 1;
  
  background(0);
  fill(255);
  
  pushMatrix();
  translate(width/2, height/2);
  pushMatrix();
    rotate( t / 100.0);
    translate(width / 2 - 20, 0); // Get closer to border
    ellipse(0, 0, 10, 10);
  popMatrix();
  
  popMatrix();
}