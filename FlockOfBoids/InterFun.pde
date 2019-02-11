class InterFun{
  
  public ArrayList<Vector> puntos;
  
  void cargarPuntos( ArrayList<Vector> puntos ){
    this.puntos = puntos;
  }
  
  
  void bezier3(){
    Vector aux = null;
    Vector punto_actual = puntos.get(0);
    Vector p0, p1, p2, p3;
    for(float t=0; t<=1; t+=0.01){
      p0 = new Vector(puntos.get(0).x()*pow((1-t),3),puntos.get(0).y()*pow((1-t),3),puntos.get(0).z()*pow((1-t),3));
      p1 = new Vector(puntos.get(1).x()*3*t*pow((1-t),2),puntos.get(1).y()*3*t*pow((1-t),2),puntos.get(1).z()*3*t*pow((1-t),2));
      p2 = new Vector(puntos.get(2).x()*3*pow(t,2)*(1-t),puntos.get(2).y()*3*pow(t,2)*(1-t),puntos.get(2).z()*3*pow(t,2)*(1-t));
      p3 = new Vector(puntos.get(3).x()*pow(t,3),puntos.get(3).y()*pow(t,3),puntos.get(3).z()*pow(t,3));
      aux = new Vector(p0.x()+p1.x()+p2.x()+p3.x(),p0.y()+p1.y()+p2.y()+p3.y(),p0.z()+p1.z()+p2.z()+p3.z());
      stroke(255);
      line(punto_actual.x(),punto_actual.y(),punto_actual.z(),aux.x(),aux.y(),aux.z());
      punto_actual = aux;
    }
  }
  void bezier7(){
    Vector aux = null;
    Vector punto_actual = puntos.get(0);
    Vector p0, p1, p2, p3, p4, p5, p6, p7;
    for(float t=0; t<=1; t+=0.01){
      aux = new Vector();
      p0 = new Vector(puntos.get(0).x()*pow((1-t),7),puntos.get(0).y()*pow((1-t),7),puntos.get(0).z()*pow((1-t),7));
      p1 = new Vector(puntos.get(1).x()*7*t*pow((1-t),6),puntos.get(1).y()*7*t*pow((1-t),6),puntos.get(1).z()*7*t*pow((1-t),6));
      p2 = new Vector(puntos.get(2).x()*21*pow(t,2)*pow((1-t),5),puntos.get(2).y()*21*pow(t,2)*pow((1-t),5),puntos.get(2).z()*21*pow(t,2)*pow((1-t),5));
      p3 = new Vector(puntos.get(3).x()*35*pow(t,3)*pow((1-t),4),puntos.get(3).y()*35*pow(t,3)*pow((1-t),4),puntos.get(3).z()*35*pow(t,3)*pow((1-t),4));
      p4 = new Vector(puntos.get(4).x()*35*pow(t,4)*pow((1-t),3),puntos.get(4).y()*35*pow(t,4)*pow((1-t),3),puntos.get(4).z()*35*pow(t,4)*pow((1-t),3));
      p5 = new Vector(puntos.get(5).x()*21*pow(t,5)*pow((1-t),2),puntos.get(5).y()*21*pow(t,5)*pow((1-t),2),puntos.get(5).z()*21*pow(t,5)*pow((1-t),2));
      p6 = new Vector(puntos.get(6).x()*7*pow(t,6)*(1-t),puntos.get(6).y()*7*pow(t,6)*(1-t),puntos.get(6).z()*7*pow(t,6)*(1-t));
      p7 = new Vector(puntos.get(7).x()*pow(t,7),puntos.get(7).y()*pow(t,7),puntos.get(7).z()*pow(t,7));
      aux = new Vector(p0.x()+p1.x()+p2.x()+p3.x()+p4.x()+p5.x()+p6.x()+p7.x(), p0.y()+p1.y()+p2.y()+p3.y()+p4.y()+p5.y()+p6.y()+p7.y(), p0.z()+p1.z()+p2.z()+p3.z()+p4.z()+p5.z()+p6.z()+p7.z());
      stroke(0);
      line(punto_actual.x(),punto_actual.y(),punto_actual.z(),aux.x(),aux.y(),aux.z());
      punto_actual = aux;
    }
  }
}
