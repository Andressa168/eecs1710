class LetterGenerator {
  
  PShape a, b, c, e, k;
  ArrayList<Letter> letters;
  PVector position;
  float offset = 150;
  
  LetterGenerator(String input, float x, float y) {
    initShapes();
    position = new PVector(x, y);
    letters = new ArrayList<Letter>();
    
    for (int i=0; i<input.length(); i++) {     
      char ch = input.charAt(i);
      
      float px = position.x + ((i+1) * offset);
      float py = position.y;
      
      switch(ch) {
        case 'a':
          letters.add(new Letter(a, px, py));
          break;
        case 'b':
          letters.add(new Letter(b, px, py));
          break;
        case 'c':
          letters.add(new Letter(c, px, py));
          break;
          case'e':
          letters.add(new Letter(e, px, py));
          break;
          case'k':
          letters.add(new Letter(k, px, py));
          break;
      }
    }
    
  }

  void initShapes() {
    a = createShape();
    a.beginShape();
    a.translate(170, 10);
    a.fill(0,255,255);
    a.vertex(4, -3);
    a.fill(204, 204, 255);
    a.vertex(4.288147, -3.430542);
    a.vertex(-175.81473, 353.3448);
    a.vertex(-43.739258, 220.41168);
    a.vertex(57.461426, 219.55405);
    a.vertex(177.53, 358.4906);
    a.beginContour();
    a.vertex(-40,180);
    a.vertex(0, 60);
    a.vertex(40,180);
    a.endContour();
    a.endShape(CLOSE);
    
    b = createShape();
    b.beginShape();
    b.translate(50, 10);
    b.fill(255, 102, 102);
    b.vertex(10, -5);
    b.fill(255, 204, 255);
    b.vertex(0.0, 0.0);
    b.vertex(-11.149227, 313.036);
    b.vertex(202.40138, 230.70326);
    b.vertex(59.17667, 145.7976);
    b.vertex(204.97429, 24.871357);
    b.beginContour();
    b.vertex(40,120);
    b.vertex(40, 30);
    b.vertex(120, 50);
    b.endContour();
    b.beginContour();
    b.vertex(30,260);
    b.vertex(30, 180);
    b.vertex(110, 230);
    b.endContour();
    b.endShape(CLOSE);   
    
    c = createShape();
    c.beginShape();
    c.translate(220, 0);
    c.fill(76, 0, 153);
    c.vertex(4, -50);
    c.fill(102, 255, 178);
    c.vertex(0.0, 0.0);
    c.vertex(-177.53003, -7.718689);
    c.vertex(-168.9537, 282.16125);
    c.vertex(51.457947, 269.29675);
    c.vertex(-127.78732, 246.99829);
    c.vertex(-146.65524, 21.440826);
    c.endShape(CLOSE);
   
    e = createShape();
    e.beginShape();
    e.texture(iphone);
    e.vertex(0.0, 0.0);
    e.vertex(267.68646, -0.95602417);
    e.vertex(267.68646, 89.86615);
    e.vertex(89.866165, 88.910126);
    e.vertex(88.91014, 178.77628);
    e.vertex(266.7304, 180.68832);
    e.vertex(265.7744, 239.96176);
    e.vertex(87.95412, 239.00574);
    e.vertex(89.866165, 313.57553);
    e.vertex(268.64246, 312.61948);
    e.vertex(270.5545, 390.05734);
    e.vertex(-0.95602417, 391.0134);
    e.endShape(CLOSE);
    
    k = createShape();
    translate(215.53537, 277.24664);
    k.beginShape();
    k.texture(orange);
    k.vertex(-0.95602417, -91.77821);
    k.vertex(-1.9120483, 360.42062);
    k.vertex(58.317413, 359.46466);
    k.vertex(53.537292, 244.74188);
    k.vertex(269.59848, 310.70746);
    k.vertex(271.51053, 260.99426);
    k.vertex(53.537292, 172.08414);
    k.vertex(205.54495, 37.284912);
    k.vertex(241.87381, 2.8680725);
    k.vertex(53.537292, 79.349915);
    k.vertex(55.44934, -96.558304);
    k.endShape(CLOSE);

  }
  
  void update() {
    //
  }
  
  void draw() {
    for (Letter letter : letters) {
      letter.run();
    }
  }
  
  void run() {
    update();
    draw();
  }

}
