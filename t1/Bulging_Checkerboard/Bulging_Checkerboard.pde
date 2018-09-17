int i, j, k;
void setup(){
  size(600,600);
  background(255);
  rectMode(CENTER);
  fill(0);
  translate(height/2,width/2);
  fill(0);
  rect(0,0,50,50);
  k = height/2;
  for(i=-k;i<=k;i +=100){
    if((height/100)%2==1){
      rect(-(i + 50),0,50,50);
      rect(0,-(i + 50),50,50);
    }
    for(j=-k;j<=k;j +=100){
      rect(i,j,50,50);
      rect(i + 50,j + 50,50,50);
      rect(-i,j,50,50);
      rect(i,-j,50,50);
    }
  }
}
void draw(){
  
}
