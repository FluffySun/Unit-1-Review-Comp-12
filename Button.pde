class Button {
  
  //instance variables
  int x, y, w, h; //x, y is center.
  boolean clicked;
  color highlight, normal;
  String text;
  
  //constructor
  Button (String t, int _x, int _y, int _w, int _h, color norm, color high) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    text = t;
    highlight = high;
    normal = norm;
    clicked = false;
}

  //Button (PImage ,int _x, int _y, int _w, int _h, color norm, color high) {
  //} 2 constructors->image button interface->diff ways to finish it

//Behaviour Functions
  //boolean touchingMouse() {
    
  //}

  //Behaviour Functions
  void show() {
    drawRect();
    drawLabel();
    checkForClick();
  }
  
  void drawRect() {
    //rectangle -> call this draw rect (to make it into a function-sub?)
    rectMode (CENTER);
    textAlign (CENTER, CENTER);
    if (mouseX>x-w/2 && mouseX<x+w/2 && mouseY>y-h/2 && mouseY<y+h/2) { //if want to return to false? use before data, if true use touch?
      //mouseX>x-w/2 && mouseX<x+w/2 && mouseY>y-h/2 && mouseY<y+h/2
      fill (highlight);
    } else {
      fill (normal);
    }
    stroke(0);
    strokeWeight(4);
    rect(x, y, w, h, 30);
  }
  
  void drawLabel() {
     //text label
    textAlign(CENTER, CENTER);
    if (mouseX>x-w/2 && mouseX<x+w/2 && mouseY>y-h/2 && mouseY<y+h/2) {
      fill(normal);
    } else {
      fill (highlight);
    } 
    textSize (w/4);
    text (text, x, y);
  }
  
  void checkForClick() {
    if (mouseReleased && mouseX > x-w/2 && mouseX < x+w/2 && mouseY>y-h/2 && mouseY<y+h/2) {
      clicked = true;
    } else {
      clicked = false;
    }
  }
}
