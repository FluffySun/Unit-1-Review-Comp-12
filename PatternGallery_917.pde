//Ema Sun
//Gallery Framework with Buttons

//should I change my buttons? because it's not demonstrating my understanding? 
//-> confirm my mark
//if needed->i can redo it

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

//pattern3 setup?
int blocksize = 200; //each square=200 pixels/units
boolean flipcolor = false; //first same color for 1st row default setting
boolean pattern2Drawn = false;

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

//Draw simple buttons @ bottom
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

//sense button clicks
void mousePressed() {
  //next button
  if (mouseX > 650 && mouseX < 750 && mouseY > 730 && mouseY < 770) {
    mode=mode + 1;
    if (mode>3) {
      pattern2Drawn=false;
      mode=1;
    }
  }

  //previous button -> reverse order/pattern
  if (mouseX > 50 && mouseX < 150 && mouseY > 730 && mouseY < 770) {
    mode=mode-1;
    if (mode<1) {
      pattern2Drawn=false;
      mode=3;
    }
  }
}

//placeholder for now
void pattern1() {
  background (dgreen);
  int y = -100; //once was 0, then was -50
  //boolean shiftright = false; //start with no shift (1st row)
  int rowcount = 0; //find the pattern in the 2 sets of rows
  
  while (y <= height+50) { //once did not have+100
     int x = -100;
    
    //shift every 2 rows? 1 row?
    if (rowcount % 2 ==1) { //once was 0 (last number to the right)
      x=x+50;
    }
    while (x<=width+50) { //once did not have 100+
      drawCube(x,y);
      x=x+100;
    }
    y=y+100; //once was 150+
    
    //if (shiftright == true) {
      
    //}
    
    //while (x <= width) {
    //  drawCube();
    //  x=x+100;
    //}
    
    //y =  y + 150;
    
    rowcount=rowcount+1;
  }
}

void drawCube(int x, int y) {
  pushMatrix();
  translate(x,y);
  
  //left face
  fill(tiffanygreen);
  stroke(0);
  quad (0,0,50,50,50,150,0,100);
  
  //right face
  fill (blue);
  stroke (0);
  quad (50,50,100,0,100,100,50, 150);
  
  //top
  fill(cream);
  stroke(0);
  quad(0, 0, 50, -50, 100, 0, 50, 50);
  
  popMatrix();
}

//void drawleftcube (int x, int y) {
//  pushMatrix();
//  translate (x,y);
//  fill (tiffanygreen);
//  stroke (0);
//  quad (0, 0, 50, 50, 50, 150, 0, 100); //0, 0, 50, 50, 50, 150, 0, 100
//  popMatrix();
//}

//void drawrightcube(int x, int y) {
//  pushMatrix();
//  translate (x, y);
//  fill (blue);
//  stroke (0);
//  quad (50, 50, 100, 0, 100, 100, 50, 150); //50, 50, 100, 0, 100, 100, 50, 150
//  popMatrix();
//}

//void gameClicks() {
//  if (true) {

//  }


//add a boolean nightMode and use keyPressed() for night+day similar true/false funct

 //Concentric squares//
void pattern2() { // problem is random runs every frame, need to set it to false before pattern 2
  pushMatrix();
  background (pink);
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
float i = 800; //starting size, can i use int?
float angle = 0; //starting rotation
float centerX = width/2;
float centerY = height/2;

//int x = 0, y = 0;

while (i > 0) { //used to be >=
  pushMatrix();
  translate(centerX, centerY); //move to center
  rotate(radians(angle)); //rotate slightly
  fill(random(255), random(255), random(255));
  rect(0, 0, i, i); //draw centered rect using rect centered before
  popMatrix();
  
  i=i-10; //shrink size because the later covers the before so from big shape to small
  angle=angle+5; //rotate more each time to create ision effect?
  //n = n - 40;
  //x = x + 20;?
  //y = y + 20; find the right amt
}
popMatrix();
}
//fix jittering effect on pattern2


void pattern3() {
  rectMode(CORNER);
  pushMatrix();
  textAlign(CENTER, CENTER);
  background (beige);
  int x = 0;
  int y = 0;
  boolean flipcolor = false; //repeated
  
  int row = 0; //do i need this?
  
  while (y < height) {
    x = 0;
    
    while (x < width) {
      drawsquareblock(x, y, flipcolor);
      x =x + blocksize;
      
//          if (col % 2 == 0) {
//  fill(black);
//} else {
//  fill(white);
//}
      
    }
    y=y + blocksize;
    row=row+1;
    flipcolor =!flipcolor; //change color scheme every 1 row
  }
    popMatrix();
}

void drawsquareblock(int x, int y, boolean flip) {
  pushMatrix();
  translate(x, y);
 
  // Background square
  if (flip==true) {
    fill(black);
  } else {
    fill (white);
  }
  noStroke();
  rect(0, 0, blocksize, blocksize);

  //triangles
  if (flip == true) {
    fill (white);
  } else {
    fill (black);
  }
  noStroke();

  // Top-left triangle
  triangle(0, 0, blocksize/2, 0, 0, blocksize/2);
  // Top-right triangle
  triangle(blocksize, 0, blocksize/2, 0, blocksize, blocksize/2);
  // Bottom-left triangle
  triangle(0, blocksize, 0, blocksize/2, blocksize/2, blocksize);
  // Bottom-right triangle
  triangle(blocksize, blocksize, blocksize/2, blocksize, blocksize, blocksize/2);
  
  popMatrix();
}
