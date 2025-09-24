Mover[] myMovers; //created object off blueprint
int n = 100; //keep track

void setup () {
  size (600, 600);
  myMovers = new Mover[n]; //array of movers 50 elements in 50 places
  
  //myMovers[i] = new Mover();
  
  int i = 0;
  while (i<n) {
    myMovers[i] = new Mover();
    i++;
  }
  //myMovers[1] = new Mover();
  //...
  //myMovers[49] = new Mover(); //replace while loop by automatically counting numbers
  
  //myMover = new Mover(); //stores link or ref to object inside
}

void draw() {
  background(0);
  int i = 0;
  while (i < n) {
    myMovers[i].act();
    myMovers[i].show();
    i++;
  }
}
  //myMovers[1].act();
  //myMovers[1].show();
  //myMovers[2].act();
  //myMovers[2].show();
