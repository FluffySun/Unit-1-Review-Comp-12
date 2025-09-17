//Ema Sun
//9.16 Mode trial framework

//COLOR PALLETTE
color black = #000000;
color white = #ffffff;
color cream = #fefae0;
color dgreen = #119da4;
color pink = #ebbab9;

//Mode framework
int mode = 1; //start pattern1

void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
}

void draw() {
  if (mode == 1) {
    pattern1();
  } else if (mode == 2) {
    pattern2();
  } else if (mode == 3) {
    pattern3();
  }
}

//switch everytime released mouse
void mouseReleased() {
  mode = mode + 1;
  if (mode > 3) {
    mode = 1; //loop back to 1 reset
  }
}

//placeholders
void pattern1() {
  background(cream);
  fill(dgreen);
  rect(width/2, height/2, 400, 400);
}

void pattern2() {
  background(black);
  fill(pink);
  rect(width/2, height/2, 400, 400);
}

void pattern3() {
  background(white);
  fill(black);
  rect(width/2, height/2, 400, 400);
}
