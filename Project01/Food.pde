class Food {
  
  PVector position;
  float sizeIcecream;
  boolean alive = true;
  
  Food(float x, float y) {
    position = new PVector(x, y);
    sizeIcecream = random(30, 60);
  }
  
  void update() {
    // TODO
  }
  
  void draw() {
    if (alive) {
      
      image(img7, position.x, position.y, sizeIcecream, sizeIcecream );
    }
  }
  
  void run() {
    update();
    draw();
  }
}
