float ang;
float x, y;
float len =20;



int direction;
void setup() {
  size(600, 600);
  background(0);
  color(HSB,400);
  
  strokeWeight(3);
  //frameRate(1);
  x= width/2;
  y= height/2;
}


void draw() {
  stroke((frameCount/2)%400,(frameCount/3)%400,400);
  /// get a random number 0 -7
  direction = int(random(8));
  //println(direction);
  turtle(direction);
}


void turtle(int d) {
   
  // use direction to rotate the turtle
  switch (d) {
  case 0:
    ang=-90;
    len*=sin(radians(45));  // the a and by sides are shorter than hyponuse 
    break;

  case 1:
    ang =-45;
    //println(ang);
     
    break;

  case 2:
    ang=0;
     len*=sin(radians(45));  // the a and by sides are shorter than hyponuse
    break;

  case 3:
    ang=45;
    break;


  case 4:
    ang = 90;
     len*=sin(radians(45));  // the a and by sides are shorter than hyponuse
    //println(ang);
    break;



  case 5:
    ang=135;
    break;

  case 6:
    ang=180;
     len*=sin(radians(45));  // the a and by sides are shorter than hyponuse
    break;


  case 7:
    ang=-135;
    break;
  }
  // get the next point using angle from case
  float x2 = x+len*(cos(radians(ang)));
  float y2 = y+len*(sin(radians(ang)));
  line(x,y,x2,y2); //draw it 
  // move x and y to x2 and y2
  x=x2;
  y=y2;
  len = 20;
  
  if (x>width){
   x = 0; 
  }
  
  if (x<0){
    x= width;
    
  }
  
  if (y>height){
    y=0;
  }
  
  if (y<0){
    
    y=height;
    
  }
  
  
}
