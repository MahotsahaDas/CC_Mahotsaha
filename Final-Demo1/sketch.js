// https://github.com/kylemcdonald/AppropriatingNewTechnologies/wiki/Week-2
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
function setup() {
  capture = createCapture(VIDEO);
  createCanvas(w, h);
  capture.size(w, h);
  capture.hide();

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

function draw() {
  if(which_char==0) king();
  else if(which_char==1) cowboy();
  else if (which_char==2) demon();
  else if(which_char==3){
    the_king=loadImage("king.png");
    the_demon=loadImage("demon.png");
    the_cowboy=loadImage("cowboy.png");
    which_char = 4;
  } else {
    background(255);
    image(the_king,100,100, 200, 240);
    image(the_demon,400,100, 200, 240);
    image(the_cowboy,600,100, 200, 240);
  }
}
function king(){
  image(capture, 0, 0, w, h);
  var positions = tracker.getCurrentPosition();
  if (positions.length > 0) {
    image(tv_image, positions[33][0] - 95, positions[33][1] - 280, 200, 240);
    image(er, positions[33][0] + 45, positions[33][1] + 30, 120, 140);
    image(er, positions[33][0] - 155, positions[33][1] + 30, 120, 140);
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
  
}