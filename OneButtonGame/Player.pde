class Player {
  
  PVector startPosition, position, target;
  float movementStep = 50;
  float movementSpeed = 0.1;
  boolean alive;
  
  Player() {
    init();
  }
  
  void init() {
    alive = true;
    startPosition = new PVector(width/2, height - 50);
    position = startPosition.copy();
    target = position.copy();
  }
  
  void moveForward() {
    target.y -= movementStep;
  }
  
  void update() {
    position.lerp(target, movementSpeed);
  }
  
  void draw() {

    if (alive) {
      image(img, position.x, position.y, 100, 120);
    } else {
      image(img3, position.x, position.y, 100, 120);
      position.x = 630;
      position.y = 785;
    } 
  }
  
  void run() {
    update();
    draw();
  }
  
}
