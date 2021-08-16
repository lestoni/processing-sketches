import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.sound.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class eon extends PApplet {




Waveform waveform;
AudioIn in;

int samples = 401;
float yoff = 0.0f;

public void setup() {
  
  
  
  yoff = (height/2)+250;
  
  in = new AudioIn(this, 0);
  waveform = new Waveform(this, samples);
  
  in.start(); //<>//
  waveform.input(in); //<>//
}

public void draw() {
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
  yoff += 0.01f;
  vertex(width/2 + 200, height/2);
  vertex(start, height/2); //<>//
  endShape(CLOSE); //<>//
}
  public void settings() {  size(800, 800);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "eon" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
