int desp = 0, ancho = 60, largo = 50;
boolean gto = true;
void setup(){
  size(600,500);
  frameRate(50);
}
void draw(){
  noStroke();
  if(!mousePressed){
    background(255);
    fill(0);
    for(int i = 0; i < width; i += 30){
      rect(i, 0, 15, width);
    }
  }
  else{
    background(100);
  }
  fill(255);
  rect(desp,180,ancho,largo);
  fill(0);
  rect(desp,280,ancho,largo);
  if( gto == true)
    desp += 1;
  else
    desp -= 1;
  if(desp >= width - ancho)
    gto = false;
  if(desp <= 0)
    gto = true;
}
