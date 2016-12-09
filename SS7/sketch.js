// Title: Inverted Capture! 
// Mahotsaha Das(Nihal Kajjam)
// The camera turns on in and a fun effect is used and by clikcing submit a picture is taken! 
var capture;
var w = 840,
  h = 580;

function setup() {
  capture = createCapture(VIDEO);
  createCanvas(w, h);
  capture.size(w, h);
  capture.hide();
  button = createButton('submit');
  button.position(750, 30);
  button.mousePressed(screenShot);
}

function draw() {
  background(255);
  image(capture, 0, 0, 840, 500);
  filter('INVERT');// inverts the image
}
function screenShot(){
  saveCanvas("Picture!",'png');// captures the image
  
  
}