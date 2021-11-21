import processing.video.*;
PImage img1;

Movie movie;

void setup() {
  size(560, 406);
  background(0);
  
  movie = new Movie(this, "eat.mp4");
  movie.loop();
  movie.volume(0);


img1 = loadImage("E:/GitHub/eecs1710/OneButtonGame/data/star.png");


  noFill();
  strokeWeight(1.0);
  stroke(0);
  pushMatrix();
  translate(random(width), random(height));
  rotate(0.0);
  rectMode(CORNERS);
  rect(0, 0, 173.0, 177.0);
  image(img1, 0, 0, 100, 100);
  popMatrix();


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
