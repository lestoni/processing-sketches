class NatureOfShapes {

  int shapeXCenter = width/2;
  int shapeYCenter = height/2;

  int shapeWidth = 50;
  int shapeHeight = 50;
  
  int rectWidth = 0;
  int rectHeight = 0;
  
  int sqWidth = -5;
  int sqHeight = -5;
  
  int circleWidth = -10;
  int circleHeight = -10;
  
  NatureOfShapes(){
    noStroke();
    fill(randRgba(), randRgba(), randRgba());
  }

// FIRST ROW
  void drawRect() {
    rectMode(CENTER);
    int x = int(shapeXCenter / 2);
    int y = int(shapeYCenter / 2);
    
    if(rectWidth < 100 && rectHeight < 50) {
      println("HERE - rect");
      rect(x, y, rectWidth, rectHeight, 8);
      
      rectWidth += 10;
      rectHeight += 5;
    }
  }
  
  void drawSquare() {
    rectMode(CENTER);
    int x = int(shapeXCenter);
    int y = int(shapeYCenter /2);
    
    if(sqWidth < 50 && sqHeight < 50) {
      println("HERE - sq");
      rect(x, y, sqWidth, sqHeight, 8);
      
      sqWidth += 5;
      sqHeight += 5;
    }
  }

  void drawCircle() {
    ellipseMode(CENTER);
    int x = width - (shapeWidth * 3);
    int y = int(shapeYCenter /2);
  
    if(circleWidth < 50 && circleHeight < 50) {
      println("HERE - sq");
      ellipse(x, y, circleWidth, circleHeight);
      
      circleWidth += 5;
      circleHeight += 5;
    }
    
  }

// SECOND ROW
  void drawTriangle() {
    int x = int(shapeXCenter / 2);
    int y = int(shapeYCenter / 2);
    
    if(rectWidth < 100 && rectHeight < 50) {
      println("HERE - tri");
      rect(x, y, rectWidth, rectHeight, 8);
      triangle(x, y - 10, x + 10, y, x + 20, y);
      
      rectWidth += 10;
      rectHeight += 5;
    }
  }
}
