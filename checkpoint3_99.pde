//Ema Sun
//block 1-4
//9.9

//use functions like pushMatrix, popMatrix, translate, and ?scale to position?
//>= 1 subfunction multiple times
//eg. window in house for 5 times+door 4 times

color lightgreen = #119da4;
color blue = #19647e;
color red = #cc2936;
color pink = #ebbab9;
color green = #38726c;
color tiffanygreen = #84dccf;

void setup () {
  size (800, 600);
  //int ();
  
}

void draw () { //put a variable function->in ()

  background (lightgreen);
   
  river (-50, 500);
 
  //boat #1
  fill (pink);
  stroke (0);
  boat (50, 175); // x,y
  
  //boat #2
  fill (tiffanygreen);
  stroke (255);
  boat (165, 200);
}

void river (int x, int y) {
   //river
   fill (green);
   stroke (tiffanygreen);
   strokeWeight(5);
   rect (x, y, 900, 150);
}

void boat (int x, int y) {
 //boatbase
 pushMatrix();
 translate (x, y); //choose number
 strokeWeight(10);
 quad (x, y, x+100, y+150, x+300, y+150, x+400, y);
 
 //boatup
 quad (x+50, y-50, x+100, y+50, x+150, y+50, x+200, y-50);
 
 //hair (), mouth(), left eye, right eye (different)
 // example (fill, shape, fill, shape, fill, shape, stroke, strokeweight)
 popMatrix();
 
 //windows:
 pushMatrix();
 translate (50, 175);
  windows (50, 50);
  windows (100, 50);

 popMatrix();
}

//BUG: 2 windows?
void windows (int x, int y) {
  pushMatrix();
  translate (x, y);
  stroke (255);
  strokeWeight (5);
  fill (blue);
  rect (x, y, 20, 20);
  rect (x, y+20, 20, 20);
  rect (x+20, y, 20, 20);
  rect (x+20, y+20, 20, 20);
  popMatrix();
}
