int desp = 0;
void setup(){
  size(600,600);
  frameRate(20);
}
void draw(){
  background(255);
  noStroke();
  for (int i=0; i<height; i+=80) {  
    for (int j=0; j<width; j += 80) {
      fill(0);
      rect(i+desp,j,40,40);
      rect(i+40-desp,j+40,40,40);
      fill(100);
      rect(i+desp-1, j, 2, 40);
      rect(i+desp+39, j, 2, 40);
      rect(i+39-desp, j+40, 2, 40);
      rect(i+79-desp, j+40, 2, 40);
    }
  }
  if(desp < 80){
    if( desp >= 40 ){
      for (int i=0; i<height; i+=80) {
        fill(0);
        rect(0,i,desp-40,40);
        fill(100);
        rect(desp-40, i, 2, 40);
      }
    }
    desp += 1;
    if( desp == 80 ){
      desp = 0;
    }
  }
  fill(100);
  for (int y = 0; y < height; y = y + 40) {
    rect(0, y, width, 2);
  }
}
