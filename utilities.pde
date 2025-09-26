void click () { //only ever true for the second the mouse is released, goes back to false
  //afterwards press=more
  mouseReleased = false;
  if (mousePressed) wasPressed = true;
  if (wasPressed && mousePressed == false) {
    mouseReleased = true;
    wasPressed = false;
  }
}

//if (myButton.clicked) {}
