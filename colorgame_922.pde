////COLOR PALLETTE
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
int mode = 0;//start with pattern1

final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER =2;

//if statement for the rest loop from gameover back to intro mode
//mouseReleased for GAMEOVER

PImage[] gif;
int numberOfFrames = 8;
int numberOfPages; //NOT SHOW?
int f;

void setup() {
  size(1200,1200, P2D);
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  
  //Load GIF frames once
  gif = new PImage [numberOfFrames];
  int i = 0;
  
  numberOfFrames = 8; //NO SHOW?
 
  while (i < numberOfFrames) {
    gif [i] = loadImage ("frame_"+i+"_delay-0.06s.gif"); //multiple copies
    i=i+1;
  }  
}

  //supposed to put 
//void show() {
//}

void draw() {
  if (mode == INTRO) {
    showIntro();
  } else if (mode == GAME) {
    showGame();
    //textFont(); //need something
  } else if (mode == GAMEOVER) {
    background (0);
    fill(255);
    text("Game Over!", width/2, height/2);
  }
}
   
void showIntro() {
  background(0);
  image(gif[f], 0, 0, width, height);
  
  println(frameCount); //NOW SHOW?
  
  //modulus
  
  if (frameCount % 2 == 0) {
    f = f+1; //is a multiple of
  if (f == numberOfFrames) {
    f = 0;
   }
  }
  
  fill (red);
  text("Color Game", width/2, height/2);
  
  //draw start button
  fill(pink);
  stroke(tiffanygreen);
  rect(width/2, height/2+100, 200, 60);
  fill(red);
  textSize(30);
  text("I'M READY!", width/2, height/2 + 100);
 }
 
  void showGame() {
   background (255);
   
   //Left black
   fill (black);
   rect (300, height/2, 600, height);
   fill (white);
   textSize(60);
   text("Match", 300, height/2-100);
   
   //right white half
   fill(white);
   rect (900, height/2, 600, height);
   fill(black);
   textSize(80);
   //textFont();
   text("Don't Match", width/2, height/2+100);  
 }
 
 void mouseReleased() {
   if (mode == INTRO) {
     //mouse
    if (mouseX > width/2 - 100 && mouseX < width/2 + 100 &&
        mouseY > height/2 + 70 && mouseY < height/2 + 130){
        mode=GAME;
     }
   } else {
   mode++;
   if (mode>GAMEOVER) {
     mode = INTRO;
   }
  }
 }
  
  //gif[0]=loadImage("frame_0_delay-0.06s.gif");
  //gif[1]=loadImage("frame_1_delay-0.06s");
  //gif[2]=loadImage("frame_2_delay-0.06s");
  //gif[3]=loadImage("frame_3_delay-0.06s");
  //gif[4]=loadImage("frame_4_delay-0.06s");
  //gif[5]=loadImage("frame_5_delay-0.06s");
  //gif[6]=loadImage("frame_6_delay-0.06s");
  //gif[7]=loadImage("frame_7_delay-0.06s");
  
  //what if the frame pictures do not show up->
//  //show current pattern
//  if (mode == 1) {
//    pattern1();
//  } else if (mode == 2) {
//    if (!pattern2Drawn) {
//    pattern2();
//    pattern2Drawn = true;
//    }
//  } else if (mode == 3) {
//    pattern3();
//  }

//  //Draw buttons
//  drawButtons();
//}

//void drawButtons() {
//  // Next button
//  //may need to reset a tex align center center button
//  rectMode(CENTER);
//  fill(white);
//  stroke(black);
//  rect(700, 750, 100, 40);
//  fill(black);
//  text("Next", 700, 750);

//  //previous button
//  fill(white);
//  stroke(black);
//  rect(100, 750, 100, 40);
//  fill(black);
//  text("Previous", 100, 750);
//}

////use MOUSERELEASED for the buttons
