PImage img, img1, img2, img3, img4, img5, img6;
PVector position, target;
boolean isRunning = false;


void setup() {
  
  size(1850, 850, P2D);// 1850 = 925 850 = 425
  
  img = loadImage("background05.jpg");
  img.resize(1850, 850);
  img1 = loadImage("space.png");
  img2 = loadImage("0.png");
  img3 = loadImage("right.png");
  img4 = loadImage("left.png");
  img5 = loadImage("eat.png");
  img5.resize(250, 200);
  
  position = new PVector(width/2, height/2);
  target = new PVector(random(width), random(height));
  
  img6 = img1;
}

void draw() {
  
  background(img);
  image(img2, 500, 500);
  image(img3, 1300, 310);
  image(img4, 100, 450);
  image(img5, 850, 630);
  
  PVector mousePos = new PVector(mouseX, mouseY);
  isRunning = position.dist(mousePos) < 150;

  if(isRunning){
    
    img6 = img1;
    position = position.lerp(target, 0.03);
    
    if (position.dist(target) < 10) {
      target = new PVector(random(width), random(height));
    }
    
  }
  image(img1, position.x, position.y, 200, 235);
}
