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
int n = 1600;
int x = 0, y = 0;
while (n >= 0) {
  fill(random(255), random(255), random(255));
  rect(x, y, n, n);
  n = n - 40;
  x = x + 20;
  y = y + 20;
}
}
