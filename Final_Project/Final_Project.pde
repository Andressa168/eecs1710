import gifAnimation.*;
import themidibus.*;
import ddf.minim.*; 

AudioPlayer music;
AudioPlayer music01;
AudioPlayer music02;
AudioPlayer music03;
Minim musics;

Gif gif;
Gif gif01;
Gif gif02;

PShape star;
ArrayList<Stroke> strokes;
int marktime = 0;
int timeout = 1000;

MidiBus myBus;
int channel = 0;
int pitch, velocity;
ArrayList<Dot> dots;

PImage img;

void setup() {
  size(1200, 675, P2D);
  
  musics = new Minim(this);
  music = musics.loadFile("windchimes.wav");
  music01 = musics.loadFile("underwater.wav");
  music02 = musics.loadFile("bubbling.wav");
  music03 = musics.loadFile("oceanwaves.wav");
  music03.loop();
  
  gif = new Gif(this, "underwater.gif");
  gif01 = new Gif(this, "fish2.gif");
  gif.loop();
  noCursor();
  
  setupXYscope();
  
  strokes = new ArrayList<Stroke>();

  MidiBus.list();
  myBus = new MidiBus(this, -1, 4); // Create a new MidiBus with no input device and the default Java Sound Synthesizer as the output device.
  dots = new ArrayList<Dot>();

}

void draw() {
  background(gif);

  float x = random(10, mouseX);
  float y = random(15, mouseX);
  float z = random(20, mouseX);
  float alpha = random(30, 100);
  color s = color(x, y, z);
  stroke(s, alpha);
  
  
  updateXYscope();
  
  for (int i=strokes.size()-1; i >= 0; i--) {
    Stroke stroke = strokes.get(i);
    stroke.run();
    if (!stroke.alive) strokes.remove(i);
  }
  
  if (millis() > marktime + timeout) {
    xy.clearWaves();
  }
  
  for (int i=dots.size()-1; i>=0; i--) {
    Dot dot = dots.get(i);
    if (dot.alive) {
      dot.run();
    } else {
      dots.remove(i);
    }
  }
  
  surface.setTitle("Final_Project");
}
