import processing.video.*;

Capture video;

void setup() {
  size(640, 480);
  
  video = new Capture(this, 640, 480);
  video.start();
}

void captureEvent(Capture video) {
  
  video.read();
}

void draw() {
  
  loadPixels();
  video.loadPixels();
  
  for(int i = 0; i < video.width; i++) {
    for(int j = 0; j < video.height; j++) {
      
      int loc = i + j * video.width;
      
      float r = red(video.pixels[loc]);
      float g = green(video.pixels[loc]);
      float b = blue(video.pixels[loc]);
      float d = dist(i, j, mouseX, mouseY);
      float factor = map(d, 0, 100, 2, 0);
      
      r *= factor;
      g *= factor;
      b *= factor;
      
      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);
      
      color c = color(r, g, b);
      pixels[loc] = c;
   
}
  }
 updatePixels();
}
 
