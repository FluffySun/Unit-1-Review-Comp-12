//Ema Sun
//Sept 4

//drawing shapes (quad shape add on->order matters, triangle not work), representing colors, the coordinate system, and layering

void setup() { //brace block off function

  //runs 1 time @ beginning 
  //set up graphics+set up int variables/arrays
  
  size (800, 600);
  
  background (229, 75, 75);
  
  //color name = color code not rgb;
  
}

void draw() { 
  
  //run repeated times=loop -> frame rate 

  //NEED! fix color of outline: stroke ();
  
  noStroke();
  
  //sky/envelope
  fill (47, 82, 224);
  triangle (0, 0, 400, 300, 800, 0);
  
  //smoke
  fill (75, 63, 114);
  rect (300, 175, 50, 75);
  
  //roof
  fill (198, 15, 123);
  triangle (200, 300, 400, 200, 600, 300);
  
  //envelope on top of roof
  stroke (42, 71, 71);
  strokeWeight (5);
  line(0, 0, width/2, height/2);
  line(width/2, height/2, 800, 0);
  
  //house base
  fill (67, 151, 117);
  rect (200, 300, 400, 200, 100);
  
  //eye
  fill (97, 208, 149);
  ellipse (400, 300, 80, 50);
  
  fill (0);
  ellipse (400, 300, 50, 50);
  
  fill (255);
  ellipse (400, 300, 25, 25);
  
  //window 
  fill (17, 157, 164);
  //side ways hourglass
  stroke(67, 151, 117);
  quad (250, 350, 250, 450, 550, 350, 550, 450);
  fill (17, 157, 164, 150);
  noStroke();
  quad (250, 450, 300, 350, 500, 350, 550, 450); 
 
  //smoke particles
  //HOW TO REPLICATE THE SAME CIRCLE UPWARDS VERTICALLY A FEW TIMES?
  //Guess: ->FUNCTIONS? int value y-
  fill (188, 237, 9);
  stroke (255, 80);
  strokeWeight (15);
  circle (350, 150, 10);
  circle (380, 100, 10);
  circle (390, 130, 10);
  circle (410, 90, 10);
  circle (430, 80, 10);
  circle (450, 120, 10);
  circle (470, 55, 10);
  circle (490, 60, 10);
  circle (510, 40, 10);
  circle (540, 25, 10);
  
}

//BUG!!!: NOT SHOWING
//floor
  //fill (255);
  //rect (0, 700, 800, 100);
