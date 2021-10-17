class Food {
  
  PVector position;
  
  Food(float x, float y) {
    position = new PVector(x, y);
  }
  
    void update() {
    // TODO
  }
  
   void draw() {
   
     PVector mousePos = new PVector(mouseX, mouseY);
     isRunning = position.dist(mousePos) < 200;
  
   if (isRunning) {
    position = position.lerp(target, 0.05);
    if (position.dist(target) < 25) {
      target = new PVector(random(width), random(height));
    }
  }
  image(img7, position.x, position.y, 70, 80);
   }
  
  void run() {
    update();
    draw();
  }
}
