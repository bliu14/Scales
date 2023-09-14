void setup() {
  size(200, 200);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  background(113, 121, 126);
  int i = 1;
  for (int y = 10; y < 500; y+=15) {
    for (int x = -1000; x < 500; x+=20) {
      fill(-(y));
      scale(x+i, y);
      i+=1;
    }
  }
}
void scale(int x, int y) {
  bezier(x, y-10, x+10, y, x+10, y, x, y+10);
  line(x, y-10, x-22, y);
  line(x, y+10, x-22, y);
}
