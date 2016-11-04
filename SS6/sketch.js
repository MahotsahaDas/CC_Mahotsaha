/*
 * @name Load and Display Image
 * @description Images can be loaded and displayed to the screen at their
 * actual size or any other size.
 * <p><em><span class="small"> To run this example locally, you will need an 
 * image file, and a running <a href="https://github.com/processing/p5.js/wiki/Local-server">
 * local server</a>.</span></em></p>

 */
var img, img1,img2,img3;  // Declare variable 'img'.
var questions=["1-Who am I?" ,"2- Why is there so much suffering?","3-What's the cure?"];
var index=0;
var answers=["You are not this body", "Due to misdentification with the body","Chant Hare Krishna"];
var images=[];
var t=false;

function setup() {
  createCanvas(720, 720);
  img = loadImage("assets/Changing-Bodies.jpg");  // Load the image
  img1 = loadImage("assets/jai.jpg");
  img2 = loadImage("assets/reincarnation.jpg");
  img3 = loadImage("assets/Maha.jpg");
  images=[img,img1,img3];
}

function draw() {
  background(255);
  //push(); 
 
  //rotate(3*PI/2);
 
  //translate(100,100);
   //scale(1/2);
  // Displays the image at its actual size at point (0,0)
  //image(img, 0, 0);
  //pop();
  // Displays the image at point (0, height/2) at half size
  //image(img, 0, height/2, img.width/2, img.height/2);
  if(t==false){
  image(img1,100,100);
  Showquestion();}
  else{
  answer(index);
  
}}
function answer(index){
  textSize(16);
  fill(255);
  image(images[index],100,100);
  
  text(answers[index],100,150);
  
  
  
  }
  function keyPressed(){
    t=true;
    if(key=='1') index=0;
    if (key=='2') index=1;
    if (key=='3') index=2;
    
  }
  function Showquestion(){
    fill(255);
    
    text("1-Who am I?",100,120);
    text ("2- Why is there so much suffering?",100,140);
    text("3-what is the cure?",100,160);
    /*for (var i=0;i<questions.length;i++){
      text(questions[i],(100+(200*i)),100);
      }*/
    
  }
