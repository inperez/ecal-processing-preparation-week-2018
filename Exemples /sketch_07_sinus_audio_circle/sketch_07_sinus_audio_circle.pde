import processing.sound.*;
SinOsc sine;

void setup() {
  size(640, 640);
  background(0);
  // Create the sine oscillator.
  sine = new SinOsc(this);
  sine.play();
}

void draw() {
  float x = width/2+sin((float)frameCount/60)*(width/2-20); 
  float y = height/2+cos((float)frameCount/60)*(height/2-20);

  background(0);
  ellipse(x,y,10, 10);
  sine.freq(x);
  fill(255);
}