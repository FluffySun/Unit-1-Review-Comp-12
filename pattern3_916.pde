//Ema Sun
//9.15
//Pattern 3

//Color Palette
color black = #000000;
color white = #ffffff;
color beige = #f5f5dc;

int blocksize = 200; //each square=200 pixels/units
boolean flipcolor = false; //first same color for 1st row default setting

void setup() {
  size(800, 800);
  background(beige);
  pattern3();
}

void pattern3() {
  int x = 0;
  int y = 0;
  int row = 0;
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
