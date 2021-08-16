class Liner {
  void drawLine() {
    strokeWeight(randInt(20));
    stroke(randRgba(), randRgba(), randRgba());
    int evenFactor = int(random(50) % 2);
    int thirdFactor = int(random(50) % 3);
    int fourthFactor = int(random(50) % 4);
    int fifthFactor = int(random(50) % 4);

    if (evenFactor == 0) {
      ellipse(randFloat(width), randFloat(height), 100, 100);
    } else if (thirdFactor == 0) {
      rect(randFloat(width), randFloat(height), randFloat(width/2), randFloat(height/2), randInt(5));
    } else if (fourthFactor == 0) {
      triangle(randFloat(width), randFloat(height), randFloat(width/2), randFloat(height/2), randFloat(width), randFloat(height));
    } else if (fifthFactor == 0) {
      // hexagon
      polygon(randFloat(width), randFloat(height), randFloat(height), randInt(10));
    } else {
      line(randInt(width), randInt(height), randInt(width), randInt(height));
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
}
