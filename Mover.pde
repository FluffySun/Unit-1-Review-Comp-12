class Mover { //create a class with 3 variables any class needs
  
  //1. instance variables
  float x, y;
  //universal variables:
  float r = random (255);
  float g = random (255);
  float b = random (255);
  
  //2. constructor
  Mover () {
      x = width/2;
      y = height/2;
  }
  
  //3. behaviour functions
  void  show() {
    stroke (0);
    fill (r,g,b);
    strokeWeight (5);
    circle (x, y, 100);
  }
  
  void act() {
     x = x + random(-2, 2);
     y = y + random (-2, 2); 
  }
}
