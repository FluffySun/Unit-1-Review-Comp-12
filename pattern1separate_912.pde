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
}

void pattern1() {
  background (pink);
  int x = 0;
  int y = 0;
  int size = 60;
  while (y < height) {
    x = 0;
    while (x < width) {
      drawcube(x, y, size);
      x += size;
    }
    y += size;
  }
}

void gameClicks() {
  if (true) {
    
    
  }
