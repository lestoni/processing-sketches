import processing.svg.*;
import java.util.*;

int nbPoints = 12;
float nbForms = 2;
float radiusMin = 10;
float radiusMax = 200;
float nbWaves = 3;
float angleRotation = 0.4;
float bgColor=255;


void setup() {
  size(800, 800);
  frameRate(10);
  smooth();
}

void draw() {
  float r = random(255);
  float g = random(255);
  float b = random(255);
  background(0);
  stroke(r,g,b);
  //if(nbForms == 100){
  //  bgColor=0;
  //}
  
  //if(bgColor == 0){
  //  stroke(255);
  //} else {
  //  stroke(r,g,b);
  //}
  
  //beginRecord(SVG, "data/exports/svg/export_"+timestamp()+".svg");
  noFill();
  strokeWeight(2);
  pushMatrix();
  translate(width/2, height/2);
  for (int n=0; n<nbForms; n++) {
    pushMatrix();
    rotate(map(sin(nbWaves*n/(nbForms-1)*TWO_PI), -1, 1, -angleRotation, angleRotation));
    shapeForm(nbPoints, map(n, 0, nbForms-1, radiusMax, radiusMin));
    popMatrix();
  }
  popMatrix();
  //endRecord();
  
  nbWaves = random(5,10);
  angleRotation = random(3,5);
  nbPoints=3;
  nbForms=int(random(50,200));
  //nbForms *= 10;
  
  nbForms=nbForms > int(random(50,400)) ? int(random(5,100)): nbForms;
}

String timestamp() 
{
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

void shapeForm(int nbPoints, float radius) {
    beginShape();
    for (int i=0; i<nbPoints; i++) {
      float angle = -PI/2+float(i)*TWO_PI/float(nbPoints);
      vertex(radius*cos(angle), radius*sin(angle));
    }
    endShape(CLOSE);
  }
