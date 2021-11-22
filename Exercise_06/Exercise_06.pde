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
      
      float r = red(int(video.pixels[loc]*random(2)));
      float g = green(int(video.pixels[loc]/0.99));
      float b = blue(int(video.pixels[loc]*random(3)));
      float d = dist(i, j, mouseX, mouseY);
      float factor = map(d, 0, 200, 2, 0);
      
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
