PImage img, img1, img2, img3, img4, img5, img6, img7;
PVector position, target;
boolean isRunning = false;
float xwalk;
float ywalk;
float speedX = 2;

void setup() {
  
  size(1850, 850, P2D);// P2D enables 2D GPU acceleration and size of the window 1850x850.
  
  img = loadImage("background05.png");// Image from the data file.
  img.resize(1850, 850); //adjusting size of the image.
  img1 = loadImage("space.png");
  img2 = loadImage("0.png");
  img3 = loadImage("sleep02.png");
  img4 = loadImage("left.png");
  img5 = loadImage("eat.png");
  img5.resize(250, 200);
  img6 = loadImage("walk01.png");
  xwalk = 1200;
  ywalk = 600;
  
  position = new PVector(width/2, height/2);
  target = new PVector(random(width), random(height));
  
  img7 = img1;
}

void draw() {
  
  background(img);
  //image(img2, 500, 500);
  //image(img3, 1450, 480);
  //image(img4, 100, 450);
  //image(img5, 850, 630);
  image(img6, 1200, 600);
  
  xwalk += speedX;
  if (xwalk > 1200) {
    
    speedX *= -1;
  } 
  else if (xwalk < 0) {
    
    speedX *= -1;
  }
  
  if (xwalk == 850) {
    img6 = img5;
  }
  if (xwalk == 500) {
    img6 = img2;
  }
  if (xwalk == 110) {
    xwalk = 100;
    ywalk = 450;
    img6 = img4;
  }
  
  
  PVector mousePos = new PVector(mouseX, mouseY);
  isRunning = position.dist(mousePos) < 100;

  if(isRunning){
    
    img7 = img1;
    position = position.lerp(target, 0.03);
    
    if (position.dist(target) < 10) {
      
      target = new PVector(random(width), random(height));
    }
        
    else if ((position.x >= 630 && position.y >= 530) && ( position.x <= 1130 && position.y <= 730) ) {
      
      img7 = img5;
}

    if ((position.x >= 200 && position.y >= 450) && ( position.x <= 550 && position.y <= 600)) {
      
      img7 = img2;
    }
    
    else if ((position.x >= 100 && position.y >= 450) && (position.x <= 200 && position.y <= 500)) {
      
      img7 = img4;
    }
    
    if ((position.x >= 1300 && position.y >= 400) && (position.x <= 1650 && position.y <= 500)) {
      
      img7 = img3;
    }
}

    image(img7, position.x, position.y);  
    image(img6, xwalk, ywalk);  
}
