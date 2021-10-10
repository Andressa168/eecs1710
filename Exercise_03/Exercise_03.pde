PImage img, img1, img2, img3, img4;
float rotSeconds = 0;
float rotMinutes = 0;
float rotHours = 0;
int lastSecond = 0;
int lastMinute = 0;
int lastHour = 0;

float faceSize = 500;
float lengthSecondHand = 220;
float lengthMinuteHand = 200;
float lengthHourHand = 100;

color outlineCol = color(0);
color secondCol = color(200, 0, 0);
color faceCol = color(100, 200, 255);

void setup() {
  size(800, 600, P2D); 
  strokeWeight(2);
  
  img = loadImage("season.png");
  img1 = loadImage("cold.png");
  img2 = loadImage("melt.png");
  img3 = loadImage("spring.png");
  img4 = loadImage("fall.png");
  
}

void draw() {
  background(img);
  
  int s = second();
  int m = minute();
  int h = hour();
  
  if (s != lastSecond) {
    rotSeconds = ((float) s / 60) * TWO_PI;
    lastSecond = s;
  }
  
  if (m != lastMinute) {
    rotMinutes = ((float) m / 60) * TWO_PI; 
    lastMinute = m;
  }
  
  if (h != lastHour) {
    rotHours = ((float) h / 12) * TWO_PI;  
    println(h);
    lastHour = h;
  }
  
  fill(faceCol);
  stroke(outlineCol);
  ellipse(width/2, height/2, faceSize, faceSize);
  
  stroke(0, 127, 255, 44);
  for(int i=0; i<12; i++) {
    float rot = ((float) i/12) * TWO_PI;
    pushMatrix();
    translate(width/2, height/2);
    rotate(rot);
    line(0, faceSize/5, 0, faceSize/2);
    popMatrix();
  }
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(rotSeconds);
  fill(secondCol);
  stroke(secondCol);
  line(0, 0, 0, -lengthSecondHand);
  image(img1, -30, -lengthSecondHand, 60, 60);//ellipse(0, -lengthSecondHand, 10,10);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(rotMinutes);
  fill(0);
  stroke(outlineCol);
  line(0, 0, 0, -lengthMinuteHand);
  image(img2, -30, -lengthMinuteHand, 60, 50);//ellipse(0, -lengthMinuteHand, 10,10);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(rotHours);
  line(0, 0, 0, -lengthHourHand);
  image(img3, -15, -lengthHourHand, 30, 30);//ellipse(0, -lengthHourHand, 10,10);
  popMatrix();
  
  fill(faceCol);
  ellipse(width/2, height/2, 10, 10);
}
