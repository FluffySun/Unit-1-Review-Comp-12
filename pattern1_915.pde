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

//boolean->night+day true/false variable

void setup () {
  size (800, 800);
  textAlign (CENTER, CENTER);
  rectMode (CENTER);

  pattern1();
}

void pattern1() {
  background (dgreen);
  int x = 0;
  int y = 0;
  while (y <= height) {
    x = 0;
    while (x <= width) {
      drawleftcube(x, y);
      drawrightcube(x, y);
      x=x+100;
    }
    y =  y + 150;
  }
}

void drawleftcube (int x, int y) {
  pushMatrix();
  translate (x,y);
  fill (tiffanygreen);
  stroke (0);
  quad (0, 0, 50, 50, 50, 150, 0, 100); //0, 0, 50, 50, 50, 150, 0, 100
  popMatrix();
}

void drawrightcube(int x, int y) {
  pushMatrix();
  translate (x, y);
  fill (blue);
  stroke (0);
  quad (50, 50, 100, 0, 100, 100, 50, 150); //50, 50, 100, 0, 100, 100, 50, 150
  popMatrix();
}

//void gameClicks() {
//  if (true) {

//  }
