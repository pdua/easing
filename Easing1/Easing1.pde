ArrayList balls= new ArrayList();

void setup(){
  size(800,800);
  x=random(width);
  y=random(height);
    X=50;
  Y=50;
  d=20;
easing=.1;
balls.add(new GravityBall(width/2,50));
}
float x,y,d;
float targetX,targetY,distX,distY,Y,X,easing;

void draw(){
  background(0);

  for (int i = 0; i < balls.size(); i++) {
    Balls b = (Balls) balls.get(i);
    balls.display();
    balls.attract();
  
}

class GravityBall {
  float x;
  float y;
  float d;
  
  float life;
  color c;
  float h;
  float easing;

Balls (float tx, float ty,float teasing) {
    colorMode(HSB, 360, 100, 100);
    x=tx;
    y=ty;
    d=50;
    easing=teasing;


    life=255;
    h=random(360);
  }
  void attract() {
  target.x=x;
  target.y=y;
  distX=X-target;
  distY=Y-targetY;
  x+=distX*easing;
  y+=distY*easing;
  }
  
  void display(){
      ellipse(x,y,d,d);
  }
  


