import processing.video.*;
PImage img1;

Movie movie;

void setup() {
  size(560, 406);
  background(0);
  
  movie = new Movie(this, "eat.mp4");
  movie.loop();
  movie.volume(0);
  
  }

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  //if (movie.available() == true) {
  //  movie.read(); 
  //}
  image(movie, 0, 0, width, height);
}
