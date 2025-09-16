//Ema Sun
//9.15
//Pattern 3

//Color Palette
color black = #000000;
color white = #ffffff;
color beige = #f5f5dc;

int blockSize = 200; //each square=200 pixels/units
boolean flipColor = false; //first same color for 1st row default setting

void setup() {
  size(600, 600);
  background(beige);
  patternGrid();
}

void patternGrid() {
  int x = 0;
  int y = 0;
  int row = 0;

  while (y < height) {
    x = 0;
    int col = 0;

    while (x < width) {
      drawsquareBlock(x, y, flipColor);
      x =x + blockSize;
      col=col+1;
    }

    y=y + blockSize;
    row=row+1;
    flipColor =!flipColor; //change color scheme every 1 row
  }
}

void drawsquareBlock(int x, int y, boolean flip) {
  pushMatrix();
  translate(x, y);

  // Background square
  if (flip==true) {
    fill(black);
  } else {
    fill (white);
  }
  noStroke();
   
  rect(0, 0, blockSize, blockSize);

  //triangles
  if (flip == true) {
    fill (white);
  } else {
    fill (black);
  }
  noStroke();

  // Top-left triangle
  triangle(0, 0, blockSize/2, 0, 0, blockSize/2);

  // Top-right triangle
  triangle(blockSize, 0, blockSize/2, 0, blockSize, blockSize/2);

  // Bottom-left triangle
  triangle(0, blockSize, 0, blockSize/2, blockSize/2, blockSize);

  // Bottom-right triangle
  triangle(blockSize, blockSize, blockSize/2, blockSize, blockSize, blockSize/2);

  popMatrix();
}
