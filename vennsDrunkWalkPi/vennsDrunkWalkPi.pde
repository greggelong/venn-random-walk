float ang;
float x, y;
float len =15;
String[] modpi;
int index =0;



int direction;
void setup() {
  size(700, 600);
  background(0);
  color(HSB,100);
  modpi = loadStrings("pimillion.txt");
  println(modpi[0]);
  strokeWeight(2);
  //frameRate(1);
  x= 50;
  y= 100;
}


void draw() {
  stroke((index+100)%200,(index)%100,300);
  /// get a digit from pi string using counter as an index
  String cha =""+modpi[0].charAt(index); //need to change to string to change to int
  direction = int(cha);
  //println(direction);
  if(direction<8){
  turtle(direction);
  }
  if(index <modpi[0].length()){
  index++;
  }else{
    noLoop();
  }
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
  len = 15;
  
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
