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
    score++;
  }
 
  void update() {
    position.lerp(target, movementSpeed);
  }
  
  void draw() {

    if (alive) {
      
      image(img, position.x, position.y, 100, 120);
    }
    else {
      image(img3, position.x, position.y, 100, 120);
      position.x = 550;
      position.y = height/2;
      text(" Try Again ", width/2, height/2, fontSize);
    } 
    
     if (player.position.x <= 1200 && player.position.y <= 50) {
      target.y += movementStep;
      player.position.x = width/2;
      player.position.y = 780;
  }
  }
  
  void run() {
    update();
    draw();
  }
  
}
