// Easing functions implementations
// Not necesarily periodical
// entry values between 0 and 1
// values between 0 and 1 are easy to work with
// https://gist.github.com/gre/1650294

class EasyParticle {
  PVector pos;
  PVector dest; // destination
  
  // Constructor
  // new EasyParicle() this function will be called
  EasyParticle() {
    this.pos = new PVector(width * 0.5, height * 0.5);
    this.dest = new PVector(random(0, width), random(0, height)) ; 
  }
  
  void draw(float animPct){ // animationPct
      // Calaculate vector difference
    PVector diff = PVector.sub(dest, pos);
    diff.mult(animPct);
    ellipse(pos.x + diff.x, pos.y + diff.y, 10, 10);

    // When got to destination choose another destination
    if (animPct > 0.99999) { // Condition not perfect
      pos.x = dest.x;
      pos.y = dest.y;

      dest.x = random(0, width);
      dest.y = random(0, height);
    } 
    ellipse(pos.x + diff.x, pos.y + diff.y, 10, 10);
  }
}

ArrayList<EasyParticle> particles;

void setup() {
  size(640, 640);
  background(0);

  particles = new ArrayList<EasyParticle>();
  
  for (int i = 0; i < 10; i++){
    // Construct object
    EasyParticle ep = new EasyParticle();
    
    // Store object in container
    particles.add(ep);
  }
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
  
  // Foreach loop
  // Useful to do something with each element
  for (EasyParticle ep: particles) {
    // ep in this scope is iterated EasyParticle
    ep.draw(animCubic);
  }
  
}