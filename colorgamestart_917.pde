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
color beige = #f5f5dc;

// MODE VARIABLES
int mode = 1;//start with pattern1

void setup() {
  size(800, 800);
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
}

void draw() {
  //show current pattern
  if (mode == 1) {
    pattern1();
  } else if (mode == 2) {
    if (!pattern2Drawn) {
    pattern2();
    pattern2Drawn = true;
    }
  } else if (mode == 3) {
    pattern3();
  }

  //Draw buttons
  drawButtons();
}

void drawButtons() {
  // Next button
  //may need to reset a tex align center center button
  rectMode(CENTER);
  fill(white);
  stroke(black);
  rect(700, 750, 100, 40);
  fill(black);
  text("Next", 700, 750);

  //previous button
  fill(white);
  stroke(black);
  rect(100, 750, 100, 40);
  fill(black);
  text("Previous", 100, 750);
}

//use MOUSERELEASED for the buttons
