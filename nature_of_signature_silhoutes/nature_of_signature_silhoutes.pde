Shaper shaper;
int seq=0;

void setup() {
  size(500, 800);
  frameRate(1);

  shaper = new Shaper();
}

void draw() {
  background(255);
  smooth();
  noStroke();
  //stroke(0);
  //strokeWeight(1);
  //strokeJoin(ROUND);
  shaper.frames();
  seq++;
}

class Shaper {
  
  int widthAvg = width/3;
  int heightAvg = height/5;

  void frames() {
    drawGrid();
  }
  
  void drawGrid() {
    //first row
    drawSlug(50, widthAvg+10, heightAvg, heightAvg+100);
    
    drawSlug(widthAvg+60, widthAvg+100, heightAvg, heightAvg+100);
    
    drawSlug(widthAvg+200, widthAvg+270, heightAvg, heightAvg+100);
    
    // second row
    drawSlug(50, widthAvg+10, heightAvg+150, heightAvg+250);
    
    drawSlug(widthAvg+60, widthAvg+100, heightAvg+150, heightAvg+250);
    
    drawSlug(widthAvg+200, widthAvg+270, heightAvg+150, heightAvg+250);
    
    // third row
    
    drawSlug(50, widthAvg+10, heightAvg+300, heightAvg+400);
    
    drawSlug(widthAvg+60, widthAvg+100, heightAvg+300, heightAvg+400);
    
    drawSlug(widthAvg+200, widthAvg+270, heightAvg+300, heightAvg+400);
  }
  
  void drawSlug(int x0, int x1, int y0,int y1 ){
    fill(random(255), random(255), random(255));
    beginShape();
    vertex(random(x0,x1), random(y0,y1));
    quadraticVertex(random(x0,x1), random(y0,y1), random(x0,x1), random(y0,y1));
    quadraticVertex(random(x0,x1), random(y0,y1), random(x0,x1), random(y0,y1));
    quadraticVertex(random(x0,x1), random(y0,y1), random(x0,x1), random(y0,y1));
    quadraticVertex(random(x0,x1), random(y0,y1), random(x0,x1), random(y0,y1));
    quadraticVertex(random(x0,x1), random(y0,y1), random(x0,x1), random(y0,y1));
    quadraticVertex(random(x0,x1), random(y0,y1), random(x0,x1), random(y0,y1));
    quadraticVertex(random(x0,x1), random(y0,y1), random(x0,x1), random(y0,y1));
    quadraticVertex(random(x0,x1), random(y0,y1), random(x0,x1), random(y0,y1));
    quadraticVertex(random(x0,x1), random(y0,y1), random(x0,x1), random(y0,y1));
    quadraticVertex(random(x0,x1), random(y0,y1), random(x0,x1), random(y0,y1));
    quadraticVertex(random(x0,x1), random(y0,y1), random(x0,x1), random(y0,y1));
    quadraticVertex(random(x0,x1), random(y0,y1), random(x0,x1), random(y0,y1));
    endShape(CLOSE);
  }
}
