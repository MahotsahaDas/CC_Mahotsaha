int x=100;
int y=100;
float r=255;
float g=255;
float b=255;
void setup() {
  size(700, 700);
}
void draw() {
  background(r,g,b);
  line(0, width/2, height, width/2);
  line(height/2, 0, height/2, width);
  if (mouseX<=300&&mouseY<=250) {
    fill(20, 50, 150);
    rect(width/2, height/2, width/2, height/2);
  } else if ( mouseX>400&& mouseY<400) {
    fill(79,108,64);
    rect(350, mouseY, mouseX, 250);
  } else if (mouseX >150 && mouseY <150) {
    background(100, 155, 165);
  } else 
  {
    fill(132,5,89);
    ellipse(245, 250, mouseX, mouseY);
  }
  for (int i = 0; i < 255; i++) {
    float r = random(150);
    stroke(48, 147, 246);
    ellipse(60, i, 36+r, i);
  }
  /*for (int i=0;i<=width; i+=50){
  rectMode(CENTER);
  rect(width/2,i,150,150);
  }*/
  //fill(255);
  text("Nitai Gaura Haribol!",450, 100); 
}
void mousePressed() {
  stroke (2);
  
  ellipseMode(CENTER);
  text("Gaura Haribol", 450,85);
  //ellipse(mouseX, mouseY, 125, 125);
}
void keyPressed() {
  println("Nitai Gaurachandra");
  r=random(0,255);g=random(0,255);b=random(0,255);
}