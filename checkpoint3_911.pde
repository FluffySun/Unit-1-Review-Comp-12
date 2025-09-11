//Ema Sun
//block 1-4
//9.9

//use functions like pushMatrix, popMatrix, translate, and ?scale to position?
//grows+shrinks shapes->+ADD->SCALE

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
  scale (0.75);
   
//eg. face (100, 100, 0.5); //x, y, scale factor ->float s in (int x+int y)
//+ scale (s); in function after translate

  river (-50, 500);
 
  //boat #1
  
  boat (50, 355, pink, 1); // x,y
  
  boat (400, 355, tiffanygreen, 0.5); // x,y
  
  rain();
  
  //boatup (50, 175);
  
  //boat #2
  //fill (tiffanygreen);
  //stroke (255);
  //boat (165, 200);
  
  //rain (); 
  
  //boatup (147, 200);
}

void river (int x, int y) {
   //river
   fill (green);
   stroke (tiffanygreen);
   strokeWeight(5);
   rect (x, y, 1120, 300);
}

void boat (int x, int y, color c, float s) { //put all variables in 1 function->concise
 //boatbase
 pushMatrix();
 translate (x, y); //choose number
 scale(s);
 stroke(0);
 fill(c);
 strokeWeight(10);
 quad (0, 0, 100, 150, 300, 150, 400, 0);
 
 //hair (), mouth(), left eye, right eye (different)
 // example (fill, shape, fill, shape, fill, shape, stroke, strokeweight)

  windows (50, 10);
  windows (100, 10);
  windows (150, 10);
  popMatrix();
 
 ////green windows:
 //pushMatrix();
 ////translate (165, 200);
 ////OR
 //translate (50, 175);
 // windows (180, 125);
 // windows (230, 125);
 // windows (280, 125);
 //popMatrix();
}

//WHAT DO?
//void lines () {
//  strokeWeight (25);
//  int x= 50;
//  if (x<= 600) {
//    line (x, 50, x, 150);
//    x = x+50;
//  }
//  //put strokeWeigh back to normal
//  strokeWeight (5);
//}

void boatup (int x, int y) { //float s
 //boatup
 pushMatrix();
 fill (red);
 translate (x, y);
 //rotate (PI/2);
 //scale (s);
 noStroke();
 quad (x+50, y-45, x+100, y+45, x+150, y+45, x+200, y-45);
 popMatrix();
}

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

void rain () {
  strokeWeight (25);
  stroke (blue);
  int x = 25;
  while (x<=1075) {
    line (x, -50, x, 50);
    x = x+50;
  }
  strokeWeight (3);
}
