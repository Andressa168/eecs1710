PImage img, img1, img2, img3, img4, img5;
float xzombie;
float yzombie;
float xicecream;
float yicecream;
float speedX = 3;

void setup() {
  
  size(1200, 800, P2D); // P2D enables 2D GPU acceleration and size of the window 1200x800.
  
  img = loadImage("zombie01.png");// Image from the data file.
  xzombie = 1200; // Set up the position of the image.
  yzombie = 555;
  
  img1 = loadImage("cream.jpg"); 
  img2 = loadImage("car.png");
  
  img3 = loadImage("ice cream.png");
  xicecream = 50; 
  yicecream = 555;
  
  img4 = loadImage("blue.png");
  img5 = loadImage("night.png");
  
}

void draw() {
  
  background(125, 212, 231); // Set the background/RGB color - SkyBlue
  image(img2, 300, 450); // Set a position for the picture/img2.
  image(img4, 0, 0); 
  
  xzombie += speedX; // The speed for the pictures.
  xicecream += speedX;
  
  if (xzombie > width || xicecream > width ) { //
    speedX *= -1;//img move right to left.
  } 
  else if (xzombie <= 450 || xicecream >= 450) { //
    xzombie = 1200; // img return to position of x: 1200.
    xicecream = 400; // img3 return to position of x: 400.
  }
  
  image(img, xzombie, yzombie, 168, 240);
  image(img3, xicecream, yicecream, 230, 240);
  image(img1, mouseX, mouseY, 30, 30);
  
  fill(255, 239, 0);// Fill the arc with RGB color - Yellow.
  stroke(255, 239, 0);// The outside line of the ellipse with color of Yellow.
  strokeWeight(2); // The degree of thickness of the arc.
  ellipse(100, 100, 100, 100); //The size of the ellipse.
  
  fill(255, 255, 255); // Fill the ellipse with RGB color - White.
  stroke(255, 255, 255);
  strokeWeight(5);
  ellipse(400, 150, 70, 60 );  // The size of a ellipse.
  ellipse(450, 150, 70, 60 );
  ellipse(500, 150, 70, 60 );
  ellipse(550, 150, 70, 60 );
  
  fill(255, 255, 255);// Fill the ellipse with RGB color - White.
  stroke(255, 255, 255);// The outside line of the ellipse with color of White.
  strokeWeight(5);// The degree of thickness of the ellipse.
  ellipse(800, 80, 70, 60 ); // The size of a ellipse.
  ellipse(850, 80, 70, 60 );
  ellipse(900, 80, 70, 60 );
  ellipse(950, 80, 70, 60 );
  
  ellipse(40, 150, 50, 50 ); // The size of a ellipse.
  ellipse(80, 150, 50, 50 );
  ellipse(120, 150, 50, 50 );
  ellipse(160, 150, 50, 50 );
 
 if (mousePressed){
  image(img5, 0, 0); 
  
  fill(255, 255, 0); // Fill the arc with RGB color - Yellow.
  stroke(255, 255, 0); // The outside line of the arc.
  strokeWeight(10); // The degree of thickness of the arc.
  arc(100, 100, 100, 100, 0, PI + QUARTER_PI, PIE);
  
  fill(255, 255, 255); // Fill the ellipse with RGB color - White.
  stroke(255, 255, 255);
  strokeWeight(5);
  ellipse(40, 150, 50, 50 ); // The size of a ellipse.
  ellipse(80, 150, 50, 50 );
  ellipse(120, 150, 50, 50 );
  ellipse(160, 150, 50, 50 );
  
 }
 
  fill(0, 255, 128);// Fill the triangle with RGB color - Green.
  stroke(0, 255, 128);
  strokeWeight(8);
  triangle(450, 230, 120, 460, 660, 460); // The size of a triangle.
  triangle(150, 200, -75, 460, 300, 460);
  triangle(900, 160, 600, 460, 1080, 460);
  triangle(1200, 300, 1030, 460, 1290, 460);

  stroke(51, 25, 0); //The outside line of the line with the color of Brown.
  strokeWeight(15);
  line(0, 795, width, 795); //The position of the Brown line.

}
