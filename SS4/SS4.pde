// Impersonal and Abstract remade
// Re designing my first assignment I have used the same program 
// and have made each shape into each class
//the various windows are a class for each object

Line l;// making line object
Ellipse e;// making ellipse object
Rectangle r;// making rectangle object
Triangle t;// making triangle object
Line[] lines= new Line[2];// making an array of Line objects


void setup(){
//background(189,64,64);
size(1080,720);
  for(int i=0; i<lines.length; i++){
  lines[i]=new Line();
  }// initializing each variable in line
//l= new Line();
e=new Ellipse();// intializing each object here 
r= new Rectangle();
t= new Triangle();
}
void draw(){
  for(int i=0; i<lines.length; i++){
  lines[i].make_line();
  }// making line print display itself
//l.make_line();
// making the object call their respective make functions
e.make_ellipse();
r.make_rectangle();
t.make_triangle();

}