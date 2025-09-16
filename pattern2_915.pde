//Ema Sun
//9.15
//Pattern2 concentric square twisted like a vision trick

//COLOR PALLETTE
color black = #000000;
color white = #ffffff;
color brown = #bc6c25;
color lbrown= #dda15e;
color cream = #fefae0;
color dgreen = #119da4;
color blue = #19647e;
color red = #cc2936;
color pink = #ebbab9;
color green = #38726c;
color tiffanygreen = #84dccf;

void setup () {
  size (800, 800);
  textAlign (CENTER, CENTER);
  rectMode (CENTER);
  pattern2();
}

//Concentric squares//
void pattern2() {
  background (pink);
float n = 800; //starting size, can i use int?
float angle = 0; //starting rotation
float centerX = width/2;
float centerY = height/2;

//int x = 0, y = 0;

while (n > 0) { //used to be >=
  pushMatrix();
  translate(centerX, centerY); //move to center
  rotate(radians(angle)); //rotate slightly
  fill(random(255), random(255), random(255));
  rect(0, 0, n, n); //draw centered rect using rect centered before
  popMatrix();
  
  n=n-10; //shrink size because the later covers the before so from big shape to small
  angle=angle+5; //rotate more each time to create ision effect?
  //n = n - 40;
  //x = x + 20;
  //y = y + 20;
}
}
