class Mover { //create a class with 3 variables any class needs
  
  //1. instance variables
  float x, y;
  float r = random (0, 100);
  
  //2. constructor
  Mover () {
      x = width/2;
      y = height/2;
  }
  
  //3. behaviour functions
  void  show() {
    stroke (0);
    fill (255);
    strokeWeight (5);
    circle (x, y, r);
  }
  
  void act() {
     x = x + random(-2, 2);
     y = y + random (-2, 2); 
  }
}
