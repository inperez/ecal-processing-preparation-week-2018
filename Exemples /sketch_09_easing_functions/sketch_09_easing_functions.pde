// Easing functions implementations
// Not necesarily periodical
// entry values between 0 and 1
// values between 0 and 1 are easy to work with
// https://gist.github.com/gre/1650294

void setup() {
  size(640, 640);
  background(0);
}

// t is between 0 and 1
float linear(float t){
  return t;
}

float easeInQuad(float t) {
  return t * t;
}

float easeInOutCubic(float t){
  return t<.5 ? 4*t*t*t : (t-1)*(2*t-2)*(2*t-2)+1;
}

float easeOutQuart(float t){
  return 1-(--t)*t*t*t;
}

void draw() {
  background(0);
  fill(255);
  
  // Animate ellipse with ease in quad
  //easeInQuad(); 0 - 1 
  
  float incrementingValue = frameCount / 100.0;
  float numeroApresVirgule = incrementingValue - (int)incrementingValue;
  
  float t = constrain(numeroApresVirgule, 0, 1); // constrain limite le numéro entre 0 et 1
  
  float animLinear = linear(t);
  float animQuad = easeInQuad(t);
  float animCubic = easeInOutCubic(t);
  float animQuart = easeOutQuart(t);
  
  float padding = 20;
  ellipse(padding + (float)(width - padding * 2) * animLinear, height * 0.2, 10, 10);
  ellipse(padding + (float)(width - padding * 2) * animQuad, height * 0.4, 10, 10);
  ellipse(padding + (float)(width - padding * 2) * animCubic, height * 0.6, 10, 10);
  ellipse(padding + (float)(width - padding * 2) * animQuart, height * 0.8, 10, 10);
}