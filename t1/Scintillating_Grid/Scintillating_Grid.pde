int colorb = 0, colorc = 255;
void setup() {
  size(600, 600);
}
void mousePressed(){
  if (colorb == 0){
    colorb = 255;
    colorc = 0;
  }else{
    colorb = 0;
    colorc = 255;
  }
}
void draw(){
  background(colorb);
  stroke(100, 100, 100);
  strokeWeight(3); 
  for (int x = 25; x < width; x = x + 25) {
    line(x, 0, x, height);
    line(0, x, width, x);
  }
  stroke(colorc);
  strokeWeight(6);
  for (int i = 25; i < width; i += 25) {
    for (int j = 25; j < height; j += 25) { 
      point(i, j);
    }
  }
}
