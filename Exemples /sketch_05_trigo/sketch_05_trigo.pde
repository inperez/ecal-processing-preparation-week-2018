

void setup() {
  size(640, 640);
  background(0);
}

void draw() {
  background(0);
  ellipse(width/2+sin((float)frameCount/60)*width/2,height*20/100,10,10);
  ellipse(width/2+sin((float)frameCount/60),height*40/100 + 40,10,10);
  ellipse(width/2+sin((float)frameCount)*width/2,height*60/100 + 40,10,10);
  
  fill(255);
  
  
}