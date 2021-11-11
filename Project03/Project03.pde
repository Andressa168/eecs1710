PImage img, img1;
ArrayList<Dot> dots;
int scaler = 2; 


void setup() {
  size(100, 100, P2D); 
  
  img = loadImage("0.jpg");
  //img1 = loadImage("1.jpg");
  surface.setSize(img.width, img.height);
  
  img.loadPixels();
  //img1.loadPixels();
  dots = new ArrayList<Dot>();

  for (int x = 0; x < img.width; x += scaler) {
    for (int y = 0; y < img.height; y += scaler) {
      // this translates x and y coordinates into a location in the pixels array
      int loc = x + y * (img.width);
      
      
      dots.add(new Dot(x, y, img.pixels[loc]));
    }
  }
  
  //for (int x = 0; x < random(width); x += scaler) {
    //for (int y = 0; y < img1.height; y += scaler) {
      // this translates x and y coordinates into a location in the pixels array
      //int loc = x + y * (img1.width);
      
      //dots.add(new Dot(x, y, img1.pixels[loc]));
   // }
  //}
}
  

void draw() { 
  background(255);
  
  for (Dot dot : dots) {
    dot.run();
  }
}

void mousePressed() {
  
}
