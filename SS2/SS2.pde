// Moving images
// keyPRessed() and mouse Pressed()
int nitai=200;
float grow=2.5;
int moveleft=0;
int moveright=400;
float r= random(155);
/*void setup(){
size(800,800);
}
void draw(){
  background(255);
ellipse(50,50,nitai+300,nitai-9);
rect(mouseX-50,mouseY-50,300,200);
rect(moveleft,moveright,nitai,nitai);
grow=(grow+0.5);
moveleft=moveleft+1;
println ("nitai"+"  "+nitai);
println ("grow"+ "   "+ grow);
}*/

// Impersonal and Abstract
void setup(){background(189,64,64);
size(1080,720);}

void draw(){
 
stroke(230,160,245);
strokeWeight(9);
line(164,moveright,350,moveleft);

fill(48,147,246);
stroke(48,147,246);
triangle(moveleft, 75, 58, 20, 86, 75);
fill(246,147,48);
stroke(246,147,48);
rect(285,65,269,99);
fill(157,175,97);
stroke(157,175,97);

ellipse(250,259,169,120);
fill(140,180,255);
stroke(140,180,255);
quad(mouseX, moveright, 80, 70, 69, 63, 30, 76);
moveleft=moveleft+1;

}
void mousePressed(){
  stroke (2);
  fill(175);
rectMode(CENTER);
rect(mouseX,mouseY,25,25);
}
void keyPressed(){
background(255);
}