PImage img, img1, img2, img3, img4;
float xzombie;
float yzombie;
float xicecream;
float yicecream;
float speedX = 3;

void setup() {
  
  size(1200, 800, P2D); // P2D enables 2D GPU acceleration and size of the window 1200x800.
  
  img = loadImage("zombie01.png");// image from the data file.
  xzombie = 1200; // set up the position of the image.
  yzombie = 555;
  
  img1 = loadImage("cream.jpg"); 
  img2 = loadImage("car.png");
  
  img3 = loadImage("ice cream.png");
  xicecream = 50; 
  yicecream = 555;
  
  img4 = loadImage("blue.png");
  
}

void draw() {
  
  background(125, 212, 231); // set the background/RGB color - SkyBlue
  image(img2, 300, 450); // set a position for the picture/img2.
  image(img4, 0, 0); 
  
  xzombie += speedX; // the speed for the pictures.
  xicecream += speedX;
  
  if (xzombie > width || xicecream > width ) { //
    speedX *= -1;// img in a positive position and .
  } 
  else if (xzombie <= 450 || xicecream >= 450) { //
    xzombie = 1200; // img return to position 1200.
    xicecream = 400; // img3 return to position 400.
  }
  
  image(img, xzombie, yzombie, 168, 240);
  image(img3, xicecream, yicecream, 230, 240);
  image(img1, mouseX, mouseY, 30, 30);
  
  fill(255, 239, 0);
  stroke(255, 128, 0);
  strokeWeight(1);
  arc(650, 450, 300, 300, PI, TWO_PI); //
  
  fill(0, 255, 128);
  stroke(0, 255, 128);
  strokeWeight(5);
  triangle(450, 230, 120, 460, 660, 460); //
  triangle(150, 200, -75, 460, 300, 460);
  triangle(900, 160, 600, 460, 1080, 460);
  triangle(1200, 300, 1030, 460, 1290, 460);
 
 if (mousePressed){
   
  fill(255, 255, 0); //
  stroke(255, 255, 0); //
  strokeWeight(5); //
  ellipse(100, 100, 100, 100); //
  
  fill(255, 255, 255);
  stroke(255, 255, 255);
  strokeWeight(5);
  
  ellipse(40, 150, 50, 50 ); //
  ellipse(80, 150, 50, 50 );
  ellipse(120, 150, 50, 50 );
  ellipse(160, 150, 50, 50 );
 
  ellipse(400, 150, 70, 60 ); //
  ellipse(450, 150, 70, 60 );
  ellipse(500, 150, 70, 60 );
  ellipse(550, 150, 70, 60 );
  
  fill(255, 255, 255);
  stroke(255, 255, 255);
  strokeWeight(5);
  ellipse(800, 230, 70, 60 ); //
  ellipse(850, 230, 70, 60 );
  ellipse(900, 230, 70, 60 );
  ellipse(950, 230, 70, 60 );
  
 }

  stroke(51, 25, 0);
  strokeWeight(15);
  line(0, 795, width, 795); //

}
