//Ema Sun
//1-4

//3 Gifs
Gif all, rainbowdash, spark;

void setup() {
  size(800, 600);
  all = new Gif ("ponyGif/pony", ".gif", 38, 3, width/2, 0, width/2, height/2); //, width, height  
  rainbowdash = new Gif ("flying/fly", ".gif", 30, 1, 500, 450, width/4, height/4);
  spark = new Gif ("spark/twilight", ".gif", 20, 2, 0, height/2, width/3, height/3);
  //#1 gif name = new Gif ("koi_pond/frame_", numbers, numbers);
  //Gif(String before, string after, int numFrames, int speed, int x, int y, int w, int h) 
  //constructor here for the class?->do all loading for the files
  //show functions ust have to call 1 time simple
  //#2
  //#3
}

void draw() {
  background(255);
  all.show();
  rainbowdash.show();
  spark.show();
}
