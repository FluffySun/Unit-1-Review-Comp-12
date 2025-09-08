//Ema Sun
//Sept 4

//GET THE SUN DIRECTION GO UP FROM 800!!!

//C1A:drawing shapes (quad shape add on->order matters, triangle not work), representing colors, the coordinate system, and layering
//quad (100, 100, width, 0, width, height, 0, height); ->3D shape big
//square (100, 100, 100);
//rounded edges for rectangl=add 1 number after coordinates
//quad can draw 3D img

//C1B: creating variables, the draw() & setup() functions, 
//if statements, and animation!
//pushMatrix(); popMatrix(); for translate (0, -100);
//global variables: 
//int x or int y; //integers: 5, 0, -3
//float w; or float l //decimals : 1, 0.5, -2.8
//boolean f; //check true or false
//color red; //stores+names colors

//color storing
color yellow = #fee440;

//animation variables
float sunY;
boolean day; //if it is the day or NOT=night -> 2 separate variables

//determining -> whether the position of sun +moon-> night/day
// if (object "sun" happens->to be in this certain position) {
// day= !day as in flipping the value/pattern;
//}

// if (day == true) {
//   draw sun
//}
//if (day == false) {
//  draw moon
//}

void setup() { //brace block off function

  //runs 1 time @ beginning 
  //set up graphics+set up int variables/arrays
  
  size (800, 600);
  
  sunY = 800; //int value?
  
  background (229, 75, 75);
  
  //color name = color code not rgb;
  
}

void draw() { 
  
  //run repeated times=loop -> frame rate 

  //NEED! fix color of outline: stroke ();
  
  //not make sun clone itself
  background (229, 75, 75);
  
  //sun->covered bottom
  fill (yellow);
  stroke (yellow);
  circle (125, sunY, 100);
  
  sunY = sunY - 2; //assign variable so it moves every frame
  
  if (sunY < 0) {
    sunY = 800;
    //reset after go out of frame
  }
  
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
  //width and hight according to the size of whole screen
  //traingle (0, 0, width/2, height/2, width, 0);
  
  //floor
  pushMatrix();
  fill (255);
  noStroke ();
  rect (0, 500, 800, 100);
  popMatrix();
  
  //house base
  fill (67, 151, 117);
  stroke (42, 71, 71);
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
  fill (255, 150);
  noStroke ();
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
