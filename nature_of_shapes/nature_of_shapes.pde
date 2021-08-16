Liner liner;

void setup() {
  size(400, 800);
  frameRate(30);
  background(255);

  liner = new Liner();
}

void draw() {
    liner.drawLine();
    delay(200);
}

void showHeadliner(){
}
