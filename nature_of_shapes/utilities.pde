int randInt(int max) {
  return int(random(0, max));
}

float randFloat(int max) {
  return random(0, max);
}

float randRgba() {
  return randFloat(255);
}
