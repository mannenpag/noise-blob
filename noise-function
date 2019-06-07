float phase = 0;
float zoff = 0;
float moveX = 0;
float moveY = 0;

void blob( int colorF, int strokeC) {
  translate(width / 2, height / 2);
  stroke(strokeC);
  strokeWeight(2);
  fill(colorF);
  beginShape();
    float noiseMax = map(phase, 0, width, 1, 5);
    for (float a = 0; a < TWO_PI; a += radians(5)) {
      float xoff = map(cos(a + phase), -1, 1, 0, noiseMax);
      float yoff = map(sin(a + phase), -1, 1, 0, noiseMax);
      float r = map(noise(xoff, yoff, zoff), 0, 1, 100, 400*count/3 / 2);
      float x = r * cos(a) + moveX;
      float y = r * sin(a) + moveY;
      vertex(x,y);
    }
  endShape(CLOSE);
  phase += 0.003;
  zoff += 0.01;
  moveY -= 0.04;
  moveX += 0.02*count;
}
