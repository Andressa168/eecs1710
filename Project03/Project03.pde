PImage img, img1;
ArrayList<Dot> dots;
int scaler = 3; // will use only every 10th pixel from the image
float x;
float y;
float easing = 0.05;

void setup() {
  size(100, 100, P2D);  
  img = loadImage("painting.jpg");
  img1 = loadImage("flower.jpg");
  surface.setSize(img.width, img.height);
  
  img.loadPixels();
  img1.loadPixels();
  dots = new ArrayList<Dot>();


  for (int x = 0; x < img.width; x += scaler) {
    for (int y = 0; y < img.height; y += scaler) {
      // this translates x and y coordinates into a location in the pixels array
      int loc = x + y * (img.width);
      
      dots.add(new Dot(x, y, img.pixels[loc]));
    }
  }
  
  for (int x = 0; x < random(width); x += scaler) {
    for (int y = 0; y < img1.height; y += scaler) {
      // this translates x and y coordinates into a location in the pixels array
      int loc = x + y * (img1.width);
      
      dots.add(new Dot(x, y, img1.pixels[loc]));
    }
  }
}
  

void draw() { 
  background(255);
  
  /*int index1 = int(random(1, 100));
  int index2 = int(random(1, 100));
  int index3 = int(random(1, 100));
  
  for (int i=0; i<img1.pixels.length; i++) {
    if (i % index1 == 0) {
      img1.pixels[i] = color(255,0,0);
    } else if (i % index2 == 0) {
      img1.pixels[i] = color(0,255,0);
    } else if (i % index3 == 0) {
      img1.pixels[i] = color(0,0,255);
    } else {
      img1.pixels[i] = img1.pixels[i];    
    }
  }
  
  img1.updatePixels();
  
  image(img1, 0, 0);*/
  
  for (Dot dot : dots) {
    dot.run();
  }
  
  surface.setTitle("" + frameRate);
}
