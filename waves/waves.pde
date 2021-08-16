int waves = 5;
int shift = 0;

void setup() {
  size(600, 800);
  
  frameRate(10);
  background(0);
  //noFill();
  strokeJoin(ROUND);
  rect(100, 50, 400, 700);
}

void draw() {
 if(shift != 700){
    for(int i = 0;i<waves;i++){
      drawWave(shift);
    }
    shift+=50;
 } else {
   background(0);
  //noFill();
  stroke(255);
  strokeJoin(ROUND);
  rect(100, 50, 400, 700);
  shift=0;
 }
}

void drawWave(int i) {
  pushMatrix();
  strokeWeight(random(7,10));
  stroke(random(255), random(255),random(255));
  strokeCap(SQUARE);
  wave(i);
  popMatrix();
}

void wave(int i) {
    float x = width/6;
    float y = (height/40) + i;
    float x1 = x;
    float y1 = random(y+10, y+100);
    float x2 = random(x, 300);
    float y2 = random(y+10, y+100);
    float x3 = random(x+200, 500);
    float y3 = random(y+10, y+100);
    float x4 = width-100;
    float y4 = random(y+10, y+100);
    bezier(x1, y1, x2, y2, x3, y3, x4, y4);
}
