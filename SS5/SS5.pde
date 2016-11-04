  // Mahotsaha Das, changes the location of the video when the mouse is moved 
  //And changes the time of the video when the mouse is pressed.
import processing.video.*;
Movie myMovie;

void setup() {
  size(1200, 1200);
  myMovie = new Movie(this, "cartoon.mp4");
  myMovie.loop();
}

void draw() {
 
  image(myMovie, mouseX, mouseY);
}


void movieEvent(Movie m) {
  m.read();}
  void mousePressed() {// jump makes the duration of the mouse change when mouse is pressed
  myMovie.jump(random(myMovie.duration()));
}