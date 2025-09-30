//Ema Sun
//Button class

//color pallette
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

boolean mouseReleased;
boolean wasPressed;

Button[] myButtons;
color bkg;

PImage buttonpic;

void setup() {
  size (1000, 1000);
  bkg = white;
  imageMode(CENTER);
  
  buttonpic = loadImage("lolirock.png");
  myButtons = new Button [4];
  myButtons[0] = new Button ("GREEN", width/2-100, height/2-100, 200, 200, tiffanygreen, lbrown); //contractor//->String t, int _x, int _y, int _w, int _h, color norm, color high
  myButtons[1] = new Button ("PINK", width/2-200, height/2-300, 50, 50, pink, cream);
  myButtons[2] = new Button ("RED", width/2-300, height/2-300, 100, 100, red, black);
  myButtons[3] = new Button (buttonpic, width/2+250, height/2-250, 450, 400, blue, dgreen);

  //2nd constructor PImage:
  
  //buttonpic = loadImage("buttonpic.png"); 
  //make sure this file is in your data folder
  
}

void draw () {
  click();
  background(bkg);
  
  int i = 0;
  while (i<4) {
    myButtons[i].show(); 
    if (myButtons[i].clicked) {
      bkg = myButtons[i].normal;
    }
    i++;
    
    //2nd constructor PImage?
    
    //int i=0;
    //while (i<myButtons.length) {
    //myButtons[i].show();
    //if (myButtons[i].clicked) {
    //bkg=myButtons[i].normal;
    //}
    //i++;
    //}
    
  }
}

//  tiffanygreenButton.act();
//  tiffanygreenButton.show();

//  if (myButton.clicked) {
//    background=tiffanygreen;
//  }
//}
  
