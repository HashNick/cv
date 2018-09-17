float i = 0;
void setup() {
  size(600, 600);
}
void draw() {
  background(255);
  fill(0,0,100);
  translate(300, 300);
  rotate(i);
  rectMode(CENTER);
  rect(0,0,400,400);
  if (!mousePressed){
    resetMatrix();
    fill(255,190,0);
    translate(0,0);
    rectMode(CORNER);
    rect(0,0,270,270);
    rect(330,0,270,270);
    rect(0,330,270,270);
    rect(330,330,270,270);
  }
  i = i + 0.02;
}
