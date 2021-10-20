class Star {

  boolean isLeft;
  PVector position, target;
  float movementSpeed = 0.01;
  float xMargin = 500;
  float yMargin = 150;
  boolean alive = true;
  
  Star() {
    float pickSide = random(1);
    float y = random(yMargin, height-yMargin*2);
    float x1, x2;
    if (pickSide < 0.5) {
      isLeft = true;
      x1 = -xMargin;
      x2 = width + xMargin;
    } else {
      isLeft = false;
      x1 = width + xMargin;
      x2 = -xMargin;
    }
    position = new PVector(x1, y);  
    target = new PVector(x2, y);  
  }
  
   void update() {
    position.lerp(target, movementSpeed);
    if (position.dist(target) < 5) alive = false;
  }
  
  void draw() {
    pushMatrix();
    translate(position.x, position.y);
    rotate(radians(random(360)));
    image(img2, 50, 50);
    popMatrix();
  }
  
  void run() {
    update();
    draw();
  }
    
  
}
