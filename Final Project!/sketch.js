// https://github.com/kylemcdonald/AppropriatingNewTechnologies/wiki/Week-2
// https://github.com/kylemcdonald/AppropriatingNewTechnologies/wiki/Week-2
// I have taken a lot of inspiration from Daniel Shiffman's program of space invaders
// I've used some of his code for making space invaders, but I've modiefied it a lot!
// And it is very different! 
var capture;
var tracker
var w = 840,
  h = 580;
var which_char=0;
var tv_image;
var horns;
var hat;
var button;
var characters=["king.png","demon.png","cowboy.png"]; 
var the_king, the_demon,the_cowboy;
var the_guy = 0;

var thepick;
var opponents=[];
var bullets=[];
var demigod;
var demon;
var song;
var opponent;
var song;
var paddle;
var thespaceship;
var winner=false;



function setup() {
  //song.play();
  capture = createCapture(VIDEO);
  createCanvas(w, h);
  capture.size(w, h);
  capture.hide();
  thepick=new the_pick();
  //bullet= new bullets(width/2,height/2);
  opponent=new Opponent();
  for (var i=0;i<800; i++){
    bullets[i]=new Bullets(7,8);
    //bullets[i].show();
    //bullets[i].move();
  }
  for (var i=0; i< 6; i++){
 opponents[i]=new Opponent(i*60+60,20);
 //opponents[i].show(); 
 print(opponents[i].x);
 
}

  colorMode(HSB);

  tracker = new clm.tracker();
  tracker.init(pModel);
  tracker.start(capture.elt);
  tv_image = loadImage('Crownt.png');
  er = loadImage('earring.png');
  horns=loadImage("horns.png");
  hat=loadImage("hat2.png");
  
  button = createButton('submit');
  button.position(750, 30);
  button.mousePressed(screenShot);

  
}

var t = 0;

function draw() {
  
  if(which_char==0) king();
  else if(which_char==2) cowboy();
  else if (which_char==1) demon();
  else if(which_char==3)
  {
    if(millis()-t>3000) which_char++;
  }
  else if(which_char==4){
    the_king=loadImage("king.png");
    the_demon=loadImage("demon.png");
    the_cowboy=loadImage("cowboy.png");
    which_char = 5;
  } else if(which_char==5) {
    background(255);
    image(the_king,100,100, 210, 145);
    image(the_demon,350,100, 210, 145);
    image(the_cowboy,600,100, 210, 145);
    stroke(0); 
    textSize(25);
      text("Pick which character you want to be!", 300, 80);
      textSize(15);
      text("Now we will play a game of Space invaders, you vs a different you!",250,350);
      textSize(25);
      text("Instructions!",380,390);
      textSize(20);
      text("Use arrows to move right and left! and spacebar to shoot!",250,420);
       
  button = createButton('............   ');
  button.position(750, 30);
      
      
  } 
  else if(winner) {
    drawWinner(winner);
  }
  else if(which_char==6) {
    DRAWSPACEINVADERS();
  }
}
function drawWinner(winner){
  background(123,234,50);
  stroke(0);
  textSize(25);
  text("THE WINNNER!!!", 300 ,50);
  text("Re run in P5 to restart the game!",300,70);
  image(winner,100,100);
}

function mousePressed()
{
  if(which_char==5)
  {
    if(mouseX>100&&mouseX<300&&mouseY>100&&mouseY<340) the_guy=1; // the_king
    if(mouseX>350&&mouseX<550&&mouseY>100&&mouseY<340) the_guy=2; // the_demon
    if(mouseX>600&&mouseX<800&&mouseY>100&&mouseY<340) the_guy=3; // the_cowboy
    if(the_guy>0) {
      if(the_guy==1) {
        paddle = the_king;
        thespaceship = the_demon;
      }
      else if(the_guy==2) {
        paddle = the_demon;
        thespaceship = the_cowboy;
      }
      else if(the_guy==3) {
        paddle = the_cowboy;
        thespaceship = the_king;
      }


      which_char++;
    }
  }
}


function king(){
  image(capture, 0, 0, w, h);
  var positions = tracker.getCurrentPosition();
  if (positions.length > 0) {
    image(tv_image, positions[33][0] - 95, positions[33][1] - 280, 200, 240);
    //image(er, positions[33][0] + 45, positions[33][1] + 30, 120, 140);
    //image(er, positions[33][0] - 155, positions[33][1] + 30, 120, 140);
  }
  
}

function demon(){image(capture, 0, 0, w, h);
  var positions = tracker.getCurrentPosition();
 
  if (positions.length > 0) {
    
    image(horns, positions[33][0] - 95, positions[33][1] - 270, 200, 240);
   
  }
  
}

function cowboy(){
  image(capture, 0, 0, w, h);
  var positions = tracker.getCurrentPosition();
   if (positions.length > 0) {
     image(hat, positions[33][0] - 140, positions[33][1] - 230, 320, 180);
    }
}

function screenShot(){
  saveCanvas(characters[which_char],'png');
  which_char++;
  t = millis(); // timestamp
  print(which_char);
  
}

function DRAWSPACEINVADERS()
{
   background(255);
  thepick.show();
 // bullet.show();
  //bullet.move();
  for (var i=0; i< bullets.length; i++)
  {
    bullets[i].show();
    bullets[i].move();
    var edge=false;
    for (var j=0; j< opponents.length; j++)
    {
      opponents[j].show();
      opponents[j].move();
      if (opponents[j].x> width || opponents[j].x < 0)
      {
        edge=true;
      }
      if(opponents[j].y> 500){
        winner=thespaceship;
      }
      if (bullets[i].hits(opponents[j]))
      {
        bullets.splice(i,1);
        opponents.splice(j,1);
        console.log("NITAI");
      }
    }  
  }
  if (opponents.length==0){
    winner=paddle;
  }
  if (edge)
  {
    for (var n=0; n< opponents.length; n++)
    {
      opponents[n].shiftDown();
     
    }  
  }

 
}



function keyPressed(){
  if (key ==' '){
    var b=new Bullets(thepick.x,height);
    bullets.push(b);
    console.log("Nitai");
  }
  if(keyCode===RIGHT_ARROW){
    thepick.move(1);
    console.log("right");
  }
  else if(keyCode===LEFT_ARROW) {
    thepick.move(-1);
    console.log("left");
  }
}
