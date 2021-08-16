
import processing.sound.*;

Waveform waveform;
AudioIn in;
SoundFile file;

int samples = 401;
float yoff = 0.0;

void setup() {
  size(800, 800);
  smooth();
  
  yoff = (height/2)+250;
  
  //in = new AudioIn(this, 0);
  file = new SoundFile(this, "output_2019_01_25_23_12_14_rhwaukq.mp3");
  waveform = new Waveform(this, samples);
  
  //in.start(); //<>//
  waveform.input(file); //<>//
  file.play();
}

void draw() {
  background(0);
  
  noFill();
  stroke(255);
  strokeWeight(random(5, 10));
  circle(height/2,width/2, 500);
  
  waveform.analyze();
  
  noStroke();
  fill(random(255), random(255), random(255));
 
  beginShape(); 
  int start = (width/2)-200;
  int end = (width/2)+250;
  int yfactor = 0;
  for (int x = start; x <= 600; x += 1) {
    float y = map(waveform.data[yfactor], -1, 1, 150, end);
    vertex(x, y); 
    yfactor++;
  }
  yoff += 0.01;
  vertex(width/2 + 200, height/2);
  vertex(start, height/2); //<>//
  endShape(CLOSE); //<>//
}
