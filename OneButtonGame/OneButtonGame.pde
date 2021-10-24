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
  
  if(score == 100){
    text("Congratulation!!! ", width/2, height/2, fontSize);

  }
  text("Score: " + score , 0, fontSize);
  
  int t = millis();
  int t3 = millis();
  if (t3 > markTime + starInterval) {
    stars.add(new Star());
    markTime = t;
  }

   for (Star stars : stars) {
    stars.run();
    
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

  
