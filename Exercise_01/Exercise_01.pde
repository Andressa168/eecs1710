color bgColor = color(102, 0, 204);
float circleSize = 50;
float x = 35;

void setup() {
  size(1000, 800, P2D); // P2D enables 2D GPU acceleration
  background(152,190,100);//RGB color - green
}

void draw() {  
  if (mousePressed) {// press mouse and start
    rectMode(CENTER);
    fill(0, 204, 204);//fill with color of the ellipse in Blue
    stroke(0, 128, 255);//set color around the shape, in this case, shape is ellipse
    strokeWeight(1);// width of the stroke
    line(mouseX, mouseY, pmouseX, pmouseY);
    ellipse(mouseX, mouseY, circleSize, circleSize);
    
  }
  else{
    stroke(127, 0, 255);//set color around the shape in Purple
    strokeWeight(5); //width of the stroke
    fill(255, 0, 255);//ill with color of the ellipse in Pink
    ellipse(x++, height/1.1, 20, 50);
    ellipse(x++, height/10, 50, 20);
}
}
