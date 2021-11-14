PImage img;
int numDots = 3000;
Dot[] dots;

float gravity = 0.4;
float gravityDelta = 0.01;
float friction = 0.99;
float floor;

void setup() {
  background(255);
  size(800, 600, P2D);
  img = loadImage("0.jpg");
  surface.setSize(img.width, img.height);
  floor = height;
  
  dots = new Dot[numDots];
  for (int i=0; i<dots.length; i++) {
    dots[i] = new Dot(random(width), random(height));
  }
}

void draw() {
  
  
  for (int i=0; i<dots.length; i++) {
    dots[i].run();
  }
  
  gravity += gravityDelta;
  
 if (mousePressed){ 
   for (int i = 0; i < img.width; i += 2){
    float x = random(width);
    float y = random(height);
    color c = img.get(int(x), int(y));
    fill(c, 25);
    noStroke();
    ellipse(x, y, random(20), random(20));
  }

 }

}
