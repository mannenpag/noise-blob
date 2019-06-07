color c = color(10, 10, 10, 40);
int cCount = 1;
int count = 0;
int secCount = 0;

void setup() {
  background(c);
  size(1920, 1080);
}

void draw() {
  for (int i = 0; i < 5; i++){
    blob( 20+cCount+i*20, 255-(i+cCount*20));
  }
  if (frameCount % 60 == 0){
     cCount++;
  }
  if (count >= 0 && secCount == 0) {
    if (frameCount % 300 == 0){
       count++;
       println(count);
    }
    if (count == 5) {
       secCount = 1;
    }
  }
  if ( secCount == 1 ){
    if (frameCount % 300 == 0){
     count--;
     println(secCount);
    }
  }
}
