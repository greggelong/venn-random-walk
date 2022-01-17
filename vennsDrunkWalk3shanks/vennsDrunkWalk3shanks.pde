float ang;
float x, y;
float len =20;  //need to reset at bottom too

String shanks = "14159265358979323846264338327950288419716939937510582097494459230781640628620899862803482534211706798214808651328230664709384460955058223172535940812848111745028410270193852110555964462294895493038196442881097566593344612847564823378678316527120190914564856692346034861045432664821339360726024914127372458700660631558817488153092096282925409171536436789259036001133053054882046652138414695194151160943305727036575959195309218611738193261179310511854807446237996274956735188575272489122793818301194912983367336244065664308602139501609244807723094362855309662027556939798695022247499620607497030412366886199511008920238377021314169411902988582544681639799904659700081700296312377387342084130791451183980570985";
String shanksa ="14159265358979323846264338327950288419716939937510582097494459230781640628620899862803482534211706798214808651328230664709384460955058223172535940812848111745028410270193852110555964462294895493038196442881097566593344612847564823378678316527120190914564856692346034861045432664821339360726024914127372458700660631558817488152092096282925409171536436789259036001133053054882046652138414695194151160943305727036575959195309218611738193261179310511854807446237983474956735188575272489122793818301194912983367336244193664308602139501609244807723094362855309662027556939798695022247499620607497030412366886199511008920238377021314169411902988582544681639799904659700081700296312377381342084130791451183980570985";

String shanksc ="14159265358979323846264338327950288419716939937510582097494459230781640628620899862803482534211706798214808651328230664709384460955058223172535940812848111745028410270193852110555964462294895493038196442881097566593344612847564823378678316527120190914564856692346034861045432664821339360726024914127372458700660631558817488152092096282925409171536436789259036001133053054882046652138414695194151160943305727036575959195309218611738193261179310511854807446237996274956735188575272489122793818301194912983367336244065664308602139501609244807723094362855309662027556939798695022247499620607497030412366886199511008920238377021314169411902988582544681639799904659700081700296312377381342084130791451183980570985";
//http://bit-player.org/wp-content/extras/shanks/shanks-pi.html
// https://mathlair.allfunandgames.ca/shanks.php

String shanksNR ="1415265357323462643275024171637510520745230716406262062034253421706721406513230647034605052317253540124174502410270135210564624543031642107565346124756423767316527120101456456234603461045432642136072602414127372457060631517415202062540171536436725036013053054204652134146514151604305727036575153021617313261731051540746237627456735157527241273130141236736240656430602135016024072304362530620275637650247462060747030412361510202370213141641025254616370465701702631237313420413071451305705";

String modernPi ="14159265358979323846264338327950288419716939937510582097494459230781640628620899862803482534211706798214808651328230664709384460955058223172535940812848111745028410270193852110555964462294895493038196442881097566593344612847564823378678316527120190914564856692346034861045432664821339360726024914127372458700660631558817488152092096282925409171536436789259036001133053054882046652138414695194151160943305727036575959195309218611738193261179310511854807446237996274956735188575272489122793818301194912983367336244065664308602139494639522473719070217986094370277053921717629317675238467481846766940513200056812714526356082778577134275778960917363717872146844090122495343014654958537105079227968925892354201995";
int direction;
void setup() {
  size(700, 600);
  background(0);
  stroke(0, 255, 0,127);
  strokeWeight(2);
  //frameRate(1);
  x= 50;
  y= 100;
  println(shanksa.length());
}


void draw() {
  /// get a random number 0 -7
  /*
  String cha =""+ shanks.charAt(frameCount-1); //need to turn char into string
   println((shanks.charAt(frameCount-1)),int(cha));
   direction=int(cha);
   turtle(direction);
   */
   
   
// bit player shanks b
  for (int i =0; i<shanks.length(); i++) {
    String cha =""+ shanks.charAt(i); //need to turn char into string
    println((shanks.charAt(i)), int(cha));
    direction=int(cha);
    if (direction <8) {  // venn did not use 8 and nine
      turtle(direction);
    }
  }

  
  
  
  // canadian
  x=50;
  y=100;
  stroke(255, 255, 0,127);
  for (int i =0; i<shanksc.length(); i++) {
    String cha =""+ shanksc.charAt(i); //need to turn char into string
    println((shanksc.charAt(i)), int(cha));
    direction=int(cha);
    if (direction <8) {  // venn did not use 8 and nine
      turtle(direction);
    }
  }
  
  
  /*
  // new rule no multiples
  x=50;
  y=100;
  
  stroke(255);
  for (int i =0; i<shanksNR.length(); i++) {
    String cha =""+ shanksNR.charAt(i); //need to turn char into string
    println((shanksNR.charAt(i)), int(cha));
    direction=int(cha);
    turtle(direction); // dont need to check for 8 and 9 with this one
  }
  */
  
  // modern pi
  x=50;
  y=100;
  stroke(255, 0, 0,127);
  for (int i =0; i<modernPi.length(); i++) {
    String cha =""+ modernPi.charAt(i); //need to turn char into string
    println((modernPi.charAt(i)), int(cha));
    direction=int(cha);
    if (direction <8) {  // venn did not use 8 and nine
      turtle(direction);
    }
  }
  fill(255,0,0);
  ellipse(x,y,5,5);
  noLoop();
}


void turtle(int d) {

  // use direction to rotate the turtle
  switch (d) {
  case 0:
    ang=-90;
    len*= sin(radians(45));  // the leng of a or b not hypotonuse
    break;

  case 1:
    ang =-45;
    //println(ang);

    break;

  case 2:
    ang=0;
    len*= sin(radians(45));
    break;

  case 3:
    ang=45;
    break;


  case 4:
    ang = 90;
    len*=sin(radians(45));
    //println(ang);
    break;



  case 5:
    ang=135;
    break;

  case 6:
    ang=180;
    len*=sin(radians(45));
    break;


  case 7:
    ang=-135;
    break;
  }
  // get the next point using angle from case
  float x2 = x+len*(cos(radians(ang)));
  float y2 = y+len*(sin(radians(ang)));
  line(x, y, x2, y2); //draw it 
  // move x and y to x2 and y2
  x=x2;
  y=y2;
  len=20;

  if (x>width) {
    x = 0;
  }

  if (x<0) {
    x= width;
  }

  if (y>height) {
    y=0;
  }

  if (y<0) {

    y=height;
  }
}
