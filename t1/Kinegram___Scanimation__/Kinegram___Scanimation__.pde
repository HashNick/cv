int ancho=6;
int desp=0;
void setup(){
  size(600,600);
  frameRate(20);
}
void draw() {
  background(255);
  for (int i=0; i<width; i+=ancho*6) {
    fill(255);
    rect(i, 0, ancho, height);
  }  
  fill(0);
  arc(height/2, height/2, 200, 200, 0, PI*2);
  for (int i=ancho; i<width; i+=ancho*6) {
    fill(255);
    rect(i, 0, ancho, height);
  }   
  fill(0);
  arc(height/2, height/2, 200, 200, 0+0.10, PI*2-0.10);
  for (int i=ancho*2; i<width; i+=ancho*6) {
    fill(255);
    rect(i, 0, ancho, height);
  }   
  fill(0);
  arc(height/2, height/2, 200, 200, 0+0.20, PI*2-0.20);
  for (int i=ancho*4; i<width; i+=ancho*6) {
    fill(255);
    rect(i, 0, ancho, height);
  }   
  fill(0);
  arc(height/2, height/2, 200, 200, 0+0.20, PI*2-0.20);
  for (int i=ancho*3; i<width; i+=ancho*6) {
    fill(255);
    rect(i, 0, ancho, height);
  }   
  fill(0);
  arc(height/2, height/2, 200, 200, 0+0.30, PI*2-0.30);
  for (int i=desp; i<width; i+=ancho*6) {
    rect(i, 0, ancho*5, height);
  }
  rect(0, 0, desp-5, height);
  desp+=ancho;
  if (desp==ancho*6)
    desp=0;
}
