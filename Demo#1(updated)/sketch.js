// https://github.com/kylemcdonald/AppropriatingNewTechnologies/wiki/Week-2
var capture;
var tracker
var w = 840,
  h = 580;

var tv_image;
var horns;
var hat;

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
  hat=loadImage("hat.png");
}

function draw() {
  image(capture, 0, 0, w, h);
  var positions = tracker.getCurrentPosition();
 
  if (positions.length > 0) {
    image(tv_image, positions[33][0] - 75, positions[33][1] - 320, 200, 240);
    image(er, positions[33][0] + 45, positions[33][1] + 30, 120, 140);
    image(er, positions[33][0] - 155, positions[33][1] + 30, 120, 140);
    //image(horns, positions[33][0] - 75, positions[33][1] - 320, 200, 240);
    //image(hat, positions[33][0] - 75, positions[33][1] - 320, 195, 240);
  }
}