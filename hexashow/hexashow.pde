int polygons = 10;
int rows = 20;
int shift = 0;
int startAnimation = millis();
float staticColor= random(255);

void setup() {
  size(800, 800);
  
  frameRate(10);
}

void draw() {
  background(0);
  for (int i=0; i<rows; i++) {
    int counter = polygons;
    if (i % 2 == 0) {
      shift = 0;
    } else {
      shift = 30;
      counter--;
    }
    staticColor= random(255);
    for (int j=0; j<counter; j++) {
      drawPolygon(i, j);
    }
  }
}

void drawPolygon(int i, int j) {
  int x  = ((width/2)/2) + (30*j) + shift;
  int y  = ((height/2)/2) + (30*i);
  
  pushMatrix();
  animate(i, j);
  polygon(x, y, 15, 6);
  popMatrix();
}

void animate(int i, int j){
  int now = millis();
  int timeDiff = now-startAnimation;
  if(timeDiff < 5000){
    fill(random(255),random(255),random(255));
  } else if(timeDiff > 5000 && timeDiff < 10000){
    if(int(random(1,7)) == j){
      fill(0);
    } else {
      fill(random(255),random(255),random(255));
    }
  } else if(timeDiff > 10000 && timeDiff < 15000){
    int f = int(random(1,7));
    if(j % f==0){
      fill(0);
    } else {
      fill(255);
    }
   } else if(timeDiff > 15000 && timeDiff < 20000){
    int f = int(random(1,7));
    if(j % f==0){
      fill(0);
    } else {
      fill(random(255),random(255),random(255));
    }
  } else if(timeDiff > 20000 && timeDiff < 25000){
    if(i % 2 == 0){
      fill(0);
    } else {
      fill(random(255),random(255),random(255));
    }
  } else if(timeDiff > 25000 && timeDiff < 30000){
    int f = int(random(1,7));
    if(i % f == 0){
      fill(0);
    } else {
      fill(staticColor,staticColor, staticColor);
    }
  } else {
    noFill();
    stroke(random(255),random(255),random(255));
    strokeWeight(4);
    strokeJoin(ROUND);
    
  }
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
