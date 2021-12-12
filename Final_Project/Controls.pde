void mouseDragged() {
  // add point based on width/height
  xy.line(mouseX, mouseY, pmouseX, pmouseY);
  
  if (strokes.size() > 0) {
    Stroke stroke = strokes.get(strokes.size()-1);
    stroke.points.add(new PVector(mouseX, mouseY));
    stroke.timestamp = millis();
  }

  marktime = millis();
}

void keyPressed() {
  if (keyCode == 8) { // DELETE
    xy.clearWaves();
  }
}

void mousePressed() {
  
  gif01.play();
  pitch = int(map(mouseY, height, 0, 0, 127));
  velocity = int(map(mouseX, 0, width, 0, 127));
  myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
  
  dots.add(new Dot(mouseX, mouseY, velocity + 10));
 
  music.play();
  music01.play();
  music02.play();
  
  Stroke stroke = new Stroke();
  strokes.add(stroke);
  

}

void mouseReleased() {
  
  myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOff
  
  music.rewind();
  music01.rewind();
  music02.rewind();
}
