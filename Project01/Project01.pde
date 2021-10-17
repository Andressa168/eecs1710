PImage img, img1, img2, img3, img4, img5, img6, img7;
PVector position, target;
boolean isRunning = false;
float x;
float y;
float easing = 0.05;
int numFoods = 5;
Food[] foods = new Food[numFoods];

void setup() {
  
  size(1850, 850, P2D);// P2D enables 2D GPU acceleration and size of the window 1850x850.
  
  img = loadImage("background05.png");// Image from the data file.
  img.resize(1850, 850); //adjusting size of the image.
  
  img1 = loadImage("space.png");
  img2 = loadImage("sing.png");
  img3 = loadImage("sleep02.png");
  img4 = loadImage("left.png");
  
  img5 = loadImage("eat.png");
  img5.resize(250, 200);
  
  img7 = loadImage("cream.png");
  
  position = new PVector(width/2, height/2);
  target = new PVector(random(width), random(height));  
  
  for (int i=0; i<foods.length; i++) {
    foods[i] = new Food(random(width), random(height));
  }
  
  
}

void draw() {
  
  background(img);
  
  for (int i=0; i<foods.length; i++) {
    foods[i].run();
  }
  
  float targetX = mouseX; //Reference from Processing "easing".
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  
    if ((x >= 630 && y >= 530) && ( x <= 1130 && y <= 730)) {
      
      img6 = img5; //Reach the position change the image.
    }

    else if ((x >= 350 && y >= 550) && ( x <= 600 && y <= 900)) {
      
      img6 = img2;
    }
    
    else if ((x >= 100 && y >= 450) && (x <= 300 && y <= 600)) {
      
      img6 = img4; //Reach the position change the image.
    }
    
    else if ((x >= 1300 && y >= 350) && (x <= 1750 && y <= 600)) {
      
      img6 = img3; //Reach the position change the image.
    }
    
    else {
      
      img6 = img1;
    }
    
    image(img6, x, y, 123, 145);
   }
    
