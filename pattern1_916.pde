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
//How do I make each 2nd row after the 1st row of the pattern
//slightly shift to the right so the left up pointed edge of the leftest shape
//touches the bottom tip of the first set of pattern 
//next set of 2 rosw should repeat the same pattern

void setup () {
  size (800, 800);
  textAlign (CENTER, CENTER);
  rectMode (CENTER);

  pattern1();
}

////MODE VARIABLES
//int mode;
//final int INTRO = 0;
//final int GAME = 1;
//final int 1 = 2;
//final int 2 = 3;
//final int 3 = 4;
//final int GAMEOVER = 5;

//mouseReleased()->decrease/increase left+right->loop back to the top->
//Set up another processing program to input and run easy functions then put it in

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


//add a boolean nightMode and use keyPressed() for night+day similar true/false function
