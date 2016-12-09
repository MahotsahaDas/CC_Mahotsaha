class Line {
  float x, y;
  Line () {
  x=200;
  y= 100;
  }// making a constructor
  void make_line() {

    stroke(230, 160, 245);
    strokeWeight(9);
    line(x, y, 350, 290);
  }
}; 