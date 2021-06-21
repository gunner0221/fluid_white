
Fluid fluid;

float t = 0;

void settings() {
  size(Nx*SCALE, Ny*SCALE);
}

void setup() {
 
  fluid = new Fluid(0.5, 0.0, 0.00001);
}

void mouseDragged(){
  fluid.addDensity((mouseX/SCALE),(mouseY/SCALE), 200);
  
  float amtX = mouseX - pmouseX;
  float amtY = mouseY - pmouseY;
  fluid.addVelocity((mouseX/SCALE),(mouseY/SCALE),amtX,amtY);
}

void draw() {
  background(0);
  
  fluid.step();
  fluid.renderD();
  fluid.fadeD();
 }

  
