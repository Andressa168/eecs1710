void keyPressed() {
  if (key == ' ' ) {
    player.moveForward();
  } 
 else if (key == 'r') { // reset
    player.init();
  }
}
