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
  text("Score: " + score, 0, fontSize);
  
  int t = millis();
  int t3 = millis();
  if (t3 > markTime + starInterval) {
    stars.add(new Star());
    markTime = t;
  }
  
    player.run();
  
   for (Star stars : stars) {
    stars.run();
     if (debug) {
      image(img3, stars.position.x, stars.position.y, player.position.x, player.position.y);
    }
    if (player.position.dist(stars.position) < crashRange) player.alive = false;
  }
  
  player.run();
   
  for (int i=stars.size()-1; i>=0; i--) {
    if (!stars.get(i).alive) {
      stars.remove(i);
    }
  }
  
  surface.setTitle("" + frameRate);
  
}

  
