class FaceVertex{
  PShape s;
  int sc = 3;
  //Lista de vertices
  ArrayList<float[]> vertices = new ArrayList<float[]>();
  //Lista de caras.
  ArrayList<Integer[]> triangulos = new ArrayList<Integer[]>();

  public FaceVertex(){
    s = createShape();
    float[] a = {3*sc, 0, 0};
    float[] b = {-3*sc, 2*sc, 0};
    float[] c = {-3*sc, 0, -2*sc};
    float[] d = {-3*sc, -2*sc, 0};
    vertices.add(a);
    vertices.add(b);
    vertices.add(c);
    vertices.add(d);
    triangulos.add(new Integer[]{1,2,3});
    triangulos.add(new Integer[]{0,2,3});
    triangulos.add(new Integer[]{0,1,3});
    triangulos.add(new Integer[]{0,1,2});
  }
  
  public PShape getShape(){
    return s;
  }
  
  public void renderi(boolean retenido){
    if(!retenido){
      beginShape(TRIANGLE);
      float[] current;
      for(int i = 0; i < triangulos.size(); i++){
        current = vertices.get( triangulos.get( i )[0] );
        vertex( current[0], current[1], current[2] );
        current = vertices.get( triangulos.get( i )[1] );
        vertex( current[0], current[1], current[2] );
        current = vertices.get( triangulos.get( i )[2] );
        vertex( current[0], current[1], current[2] );
      }
      endShape();
    }else{
      s.setStroke(color(0, 0, 255));
      s.setFill(color(0, 255, 255, 125));
      s.beginShape(TRIANGLE);
      float[] current;
      for(int i = 0; i < triangulos.size(); i++){
        current = vertices.get( triangulos.get( i )[0] );
        s.vertex( current[0], current[1], current[2] );
        current = vertices.get( triangulos.get( i )[1] );
        s.vertex( current[0], current[1], current[2] );
        current = vertices.get( triangulos.get( i )[2] );
        s.vertex( current[0], current[1], current[2] );
      }
      s.endShape();
    }
  }
  
}
