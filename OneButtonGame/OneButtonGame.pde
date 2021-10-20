PImage img, img1, img2, img3, img4;
Player player;
ArrayList<Star> stars;

int timeLimit = 60;
int currentTime = 0;
int score = 0;
int markTime = 0;
int starInterval = 1000;
float crashRange = 80;
boolean debug = false;

PFont font;
int fontSize = 48;

void setup() {
  
  size(1200, 800, P2D);
  img1 = loadImage("sky.jpg");
  img1.resize(1200, 800);
  
  img = loadImage("space.png");
  img2 = loadImage("star.png");
  img2.resize(50, 50);
  img3 = loadImage("cry.png");

  font = createFont("Arial", fontSize);
  textFont(font, fontSize);
  imageMode(CENTER);
  player = new Player();
  stars = new ArrayList<Star>();
  
}

void draw() {
  background(img1);
  
  int t = millis();
  currentTime = abs(timeLimit - int(t/1000));
  
  int t1 = millis();
  score = abs(timeLimit - int(t1/1000));
  
  fill(255);
  text(currentTime, 10, fontSize);
  text(score, 1130, fontSize);
  
  int t3 = millis();
  
  if (t3 > markTime + starInterval) {
    stars.add(new Star());
    markTime = t;
  }
  
    player.run();
  
   for (Star stars : stars) {
    stars.run();
   }
 
   
  for (int i=stars.size()-1; i>=0; i--) {
    if (!stars.get(i).alive) {
      stars.remove(i);
    }
  }
  
  surface.setTitle("" + frameRate);
  
}

  
