class Dot {
  
  PVector position;
  PVector speed;
  int timestamp;
  
  Dot(float x, float y) {
    position = new PVector(x, y);
    timestamp = millis();
    speed = new PVector(random(-1, 1), random(-1, 2));
  }
  
  void update() {
    position.add(speed);
    position.y += gravity;
    speed.mult(friction);
  }
  
  void draw() {
    noStroke();
    color c = img.get(int(position.x), int(position.y));
    fill(c,25);
    ellipse(position.x, position.y, 10, 10);
  }
  
  void run() {
    update();
    draw();  
  }
  

}
