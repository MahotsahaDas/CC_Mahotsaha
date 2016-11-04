// Nihal Kajjam(Mahotsaha Das) Questions and answers.
//import processing.sound.*;


PImage img, img2, img3, img4, img5,img6,img7,img8,img9,img10,img11,img12;
int s1=750; 
int s2=700;
String state="jai";
PFont font,font1,font2;
int timer=7000;
int c=0;
int st=0;
int scene=99;
float r= int (random(1,2));
float s=int (random(4,6));
float t= int (random(7,10));
int x=0;
int y=0;
String g="As a person puts on new garments, giving up old ones,the soul similarly accepts new material bodies,giving up the old and useless ones.You are an eternal conscious being, full knowledge and bliss.";
void setup() {
  size(1100,900);

  img=loadImage("vyasamsi.jpg");
  img2=loadImage("Mahabharat.jpg");
  img3=loadImage("6.jpg");
  img4=loadImage("samsara.jpg");
  img5=loadImage("sankirtan.jpg");
  img6=loadImage("janmamrtyu.png");
  img7=loadImage("2.jpg");
  img8=loadImage("1.jpg");
  img9=loadImage("Vyasa.jpg");
  img10=loadImage("q.gif");
  img11=loadImage("5.jpg");
  img12=loadImage("i.jpg");
  font=loadFont("Baskerville-BoldItalic-48.vlw");
  font1=loadFont("Baskerville-BoldItalic-48.vlw");
  font2=loadFont("HelveticaNeue-48.vlw");
  textFont(font);
  textFont(font1);
  textFont(font2);
}
void draw() {
  x=mouseX;
  y=mouseY;
  c=millis();
  if (state=="jai") {


    image(img3, 0, 0);
    textAlign(CENTER);

    //textSize(5);
    //textAlign(CENTER);
    textFont(font,15);


    text("A serious enquirer in search of a spiritual master", 390, 390);
    text("wanders the forest", 390, 420);
    textSize(25);
    
    fill(255);
    text("CLICK HERE TO SEE WHAT HAPPENS NEXT", width/2, 450);
  } 
  else if (state=="Haribol") {
    background(255);
    image(img2, 0, 0);
    fill(255);
    textSize(20);
    textFont(font1,20);
    text("The Guru asks the inquisitive wanderer-", width/2, 100);
    text("Dear pilgrim, what brings you here?  ", width/2, 120);
    textFont(font2,25);
    text("please click the text that you would like to explore", width/2, 500);
    //text("press 9 to see what the disciple said", width/2, 65);
      //text("click here to go to the next scene", width/2, 65);
      //st=c;
    
    //background (255);}
  }
  if (scene==9) {
    scene1();
    }
    //image(img2,0,0);}
   else if (scene==0) {
    questions();
  } else if (scene==1) {
    Clothes();
  } else if ( scene==2) 
    {BBD();
    //text ("press B to back!", width/2, height-70);
  } else if (scene==3) {
    Sankirtan();}
    /*if (state != "Nitai-Gauranga") {if (mousePressed){
    if(x==width/2 && y==220){ 
    textFont(font2,18);
    text("Guru says-please proceed", width/2, 220);}
    
    }}*/ 
    else if (scene==4){Sankirtan2();}
    else if (scene==5) Sankirtan3();
    else if (scene==6) clothes1();
    else if (scene==7) clothes2();
    else if(scene==8) {quit();}
    else if (scene==9) {BBD1();}
  }
void scene1(){
    background(#4B4A42);
    image(img2, 0, 0);
    fill(255);
    //text("Click here to see what happens next", width/2,100);
     textFont(font1,20);
    text("Disciple says-", width/2, 160);
    text("I have come here to inquire about the truth", width/2, 180);
    text("Guru says-please proceed", width/2, 300);}
  //text("press '0'to continue", width/2, 65);}
    
void questions(){
    background(#15140D);
    image(img2, 0, 0);
    fill(255);
    //text("Click here to see what the Guru says",width/2,100);
     textFont(font1,20);
    text ("Who am I?", width/2, 160);
    text("Why am I suffering", width/2, 200);
    if( mouseX>width/2-20 && mouseX<width/2+20 && mouseY>y && mouseY<y ) {
    
    // set the fill colour to black
    
    fill(255);}
    
  
    text ("What is the cure for all my suffering?", width/2, 240);
    //text("press 9 to see what the disciple said", width/2, 65);
    textSize(20);}
   // fill(255);
    //text("press 1 or 2 or 3 to find the answers to the respective questions", width/2, 65);}
void Clothes(){
  background(#FCDCB5);
   if(r==1){ 
  image(img, 0, 0);}
  else if(r==2){
  image(img6,0,0);}
    
    textSize(15);

    
   fill(#FAD3A4);
     //rectMode(CENTER);
     //rect(200, 650, 450, 90);
     fill(0);
     //textSize(19);
     //text("Click here to go to the next answer", 170,220);
     textSize(15);
     //text(g,200,635);}
      textFont(font1,15);
    text("As a person puts on new garments, giving up old ones,the soul similarly", 820, 100);
    text("accepts new material bodies,giving up the old and useless ones.", 800, 120);
    text("You are an eternal conscious being, full knowledge and bliss.",800,140);
    text("Finding happiness in matter can be compared to looking for a diamond",820,160);
    text("in a bag of garbage, your real happiness lies in self realization.",820,180);
  textFont(font2,18);
  text("Can consciouness die?", 800, 400);
  text("What is the nature of the consciousness?", 800, 300);  
   textFont(font2,30);
    text("Go back", 950,550);
  text("Quit",950,600);
  //text("press C  or V for more information, Q to quit",800,50);
  
  fill(0);}
    //textSize(27);}
    //text ("press B to back!", width/2, height-70);}
    
    void clothes1(){
      background(255);
      textAlign(CENTER);
      textFont(font1,15);
      image(img9, 0, 0);
      fill(0);
    text ("Those who are seers of the truth", 900,100); 
    text(" have concluded that of the nonexistent",900,120);
    text ("[the material body] there is no" , 900, 140);
    text ("endurance and of the eternal", 900,160);
    text("[the soul] there is no change",900,180);
    text("Consciousness can never be cut to pieces",900,200);
    text ("by any weapon, nor burned by ﬁre, nor",900,220);
    text("moistened by water,nor withered by the wind.", 900,240);
    text("Can consciouness die?", 800, 400);
     textFont(font2,30);
    text("Go back", 950,550);
  text("Quit",950,600);
    
    //text("press C  or 1 for more information, Q to quit",850,50);
    
    
    }

void clothes2(){
  background(#47A3F2);
  //imageMode(CENTER);
      textAlign(CENTER);
      textFont(font1,15);
      image(img10, 0, 0);
      fill(0);

      /* 
      He is unborn, eternal, 
      ever-existing and primeval.
      */
    text (" For the soul there is neither birth nor", 950,100); 
    text("death at any time",950,120);
    text ("He has not come into being," , 950, 140);
    text (" does not come into being, and", 950,160);
    text ("  will not come into being.", 950,180);
    text("He is unborn, eternal,ever-", 950, 200);
   text ("existing and primeval.",950,220);
   text(" He is not slain when the body is slain.", 950,240);
   textFont(font2, 16);
   text("What is the nature of the consciousness?",950,350);
    textFont(font2,30);
    text("Go back", 950,550);
  text("Quit",950,600);
   //text("press 1  or V for more information, Q to quit",950,50);
    

}
void BBD(){
  background(#8AB7F5);
    image(img4, 0, 0);
    //rectMode(CENTER);
    fill(#FCDCB5);
     //rect(546, 450, 480, 110);
    fill(0);
    textSize(15);
    //text("Click here to go to the next answer", 600,120);
    textSize(18);
    textMode(CENTER);
    textFont(font1,18);
    text("You are suffering because you midentify youserself as the body",800, 100);
    text("As the embodied soul continuously passes, in this body, ", 780, 120);
    text(" from boyhood to youth to old age, the soul similarly ", 780, 140);
    text("passes into another body at death. ", 780, 160);
    text("A sober preson is not bewildered by such a change.", 780, 180);
    textFont(font2,30);
     text("Go back", 700,550);
  text("Quit",700,600);
    //text("Press Q to quit",800,650);
    fill(255);
    return;
  }
  void BBD1(){
    image(img12,0,0);
    textSize(14);
    textMode(CENTER);
    textFont(font1,15);
    text("You are suffering because you midentify youserself as the body",760, 100);
    text("As the embodied soul continuously passes, in this body, ", 750, 120);
    text(" from boyhood to youth to old age, the soul similarly ", 740, 140);
    text("passes into another body at death. ", 740, 160);
    text("A sober preson is not bewildered by such a change.", 740, 180);
    
    text("Go back", 700,750);
  text("Quit",700,800);
    
  
  
  }

void Sankirtan(){
  
  background(#E3D130);
  image(img5, 0, 0);
  fill(0);
  textSize(15);
  textFont(font,15);
  text("Join a group of sanitly devotees of Lord Krishna. And loudly chant ", 500, 570);
  text("Hare Kishna Hare Krishna Krishna Krishna Hare Hare", 500, 590);
  text("Hare Rama Hare Rama Rama Rama Hare Hare", 500, 610);
  text("And study these scientific devotional scriptures like the Bhagavad Gita, Srimad Bhagavatam,", 500, 630);
  text("under a bonafide spiritual master.", 500, 650);
  text("Serving him and the devotees submissively with love", 500, 670);
  textFont(font2,18);
  text("Go deeper",500,50);
  //text("Go back", 300,50);
  text("Quit",700,50);
    //textSize(27);
    //text("Click here to read again to read again!", width/2, 50);

}
void Sankirtan2(){
  background(255);
   textFont(font1,15);
  image(img7, 0, 0);
  fill(0);
  textSize(15);
  text("  Join a group of sanitly devotees of Lord Krishna. And loudly chant ", 500, 590);
  text("Hare Kishna Hare Krishna Krishna Krishna Hare Hare", 500, 610);
  text("Hare Rama Hare Rama Rama Rama Hare Hare", 500, 630);
  text("Having a strong philosophical understanding, dance like a madman",500,650);
  textFont(font2,18);
  fill(255);
 text("Go deeper",570,50);
 //text("Go back", 300,50);
  text("Quit",700,50);
  }
 void Sankirtan3(){
   background(255);
  image(img8, 0, 0);
  fill(255);
  textSize(15);
  textFont(font1,15);
  text("Loudly call out to Lord Gauranga by chanting", 500, 590);
  text("Hare Kishna Hare Krishna Krishna Krishna Hare Hare", 500, 610);
  text("Hare Rama Hare Rama Rama Rama Hare Hare", 500, 630);
  text("Approach a spiritual master and submissively enquire from him about ", 500,650);
  text("The nature of the Absolute Truth and he can reveal it unto because he has seen the truth", 500, 670);
 //text("Go deeper",500,50);
 text("Go back", 300,50);
  text("Quit",700,50);
 /*textFont(font2,18);
  fill(255);
  text("press J for more information, Q to quit",500,50);*/
 }
 void quit(){
   background(255);
   image(img11,0,0);
 textMode(CENTER);
    textFont(font1,30);
    fill(255);
    text("Thank you for your sincere enquiries", width/2,height/2+20);
    //text("press B to go back", width/2, height/2+40);
 }
 

void mousePressed() {
  //img3.clear();
  if (state=="jai") {
    state="Haribol";
  } else if (state=="Haribol") {
    state="Nitai-Gauranga";
  }
  if (mouseY<400 && mouseY>250 && mouseX>350 && mouseX < 750 && scene == 9){
  questions();
  scene = 0;}
   if (mouseY<140 && mouseY>100 && mouseX>0 && mouseX < 1100 && state == "Nitai-Gauranga"){scene=9;}
  if (mouseY<180 && mouseY>140 && mouseX>0 && mouseX < 750 && scene == 0){scene=1;}
    if (mouseY<220 && mouseY>180 && mouseX>0 && mouseX < 750 && scene == 0){scene=2;}
      if (mouseY<240 && mouseY>220 && mouseX>0 && mouseX < 750 && scene == 0){scene=3;}
        if (mouseY<320 && mouseY>280 && mouseX>550 && mouseX < 1100 && scene == 1){scene=6;}
        if (mouseY<420 && mouseY>380 && mouseX>550 && mouseX < 1100 && scene == 1){scene=7;}
        if (mouseY<70 && mouseY>30 && mouseX>0 && mouseX <550 && scene == 3){scene=4;}
        if (mouseY<70 && mouseY>30 && mouseX>550 && mouseX < 1100 && scene == 4){scene=5;}
        if (mouseY<420 && mouseY>380 && mouseX>550 && mouseX <900 && scene == 6){scene=7;}
        
        if (mouseY<570 && mouseY>530 && mouseX>550 && mouseX <1000 && scene == 7){scene=0;}
        if (mouseY<370 && mouseY>330 && mouseX>0 && mouseX <1000 && scene == 7){scene=6;}
        if (mouseY<620 && mouseY>580 && mouseX>0 && mouseX <1000 && scene == 7){scene=8;}
        
      if (mouseY<570 && mouseY>530 && mouseX>550 && mouseX <1000 && scene == 6){scene=0;}
        if (mouseY<510 && mouseY>490 && mouseX>0 && mouseX <1000 && scene == 6){scene=7;}
        if (mouseY<620 && mouseY>580 && mouseX>0 && mouseX <1000 && scene == 6){scene=8;}
        
      //if (mouseY<70 && mouseY>30 && mouseX>280 && mouseX <320 && scene == 3){scene=0;}
      if (mouseY<510 && mouseY>490 && mouseX>0 && mouseX <550 && scene == 3){scene=6;}
      if (mouseY<70 && mouseY>30 && mouseX>650 && mouseX <1000 && scene == 3){scene=8;}
      
      if (mouseY<70 && mouseY>30 && mouseX>280 && mouseX <320 && scene == 5){scene=0;}
      if (mouseY<510 && mouseY>490 && mouseX>330 && mouseX <550 && scene == 5){scene=6;}
      if (mouseY<70 && mouseY>30 && mouseX>650 && mouseX <1000 && scene == 5){scene=8;}
      
      if (mouseY<570 && mouseY>530 && mouseX>930 && mouseX <970 && scene == 1){scene=0;}
      //if (mouseY<510 && mouseY>490 && mouseX>0 && mouseX <550 && scene == 3){scene=6;}
      if (mouseY<620 && mouseY>580 && mouseX>930 && mouseX <1000 && scene == 1){scene=8;}
 
  if (mouseY<570 && mouseY>530 && mouseX>680 && mouseX <720 && scene == 2){scene=0;}
      //if (mouseY<510 && mouseY>490 && mouseX>0 && mouseX <550 && scene == 3){scene=6;}
      if (mouseY<620 && mouseY>580 && mouseX>680 && mouseX <720 && scene == 2){scene=8;}
      
      
 
 
 //else if(state=="Nitai-Gauranga"){state="Bramha-Jignyasa";}
 //else if(state=="Bramha-Jignyasa") state="Dehinosmin";
 // else if(state=="Dehinosmin") state="Vyasamsi";
 // else if(state=="Vyasamsi") state="NitaiGaurHaribol";
 // else if(state=="NitaiGaurHaribol") state="Bramha-Jignyasa";
 // textClear()}*/
}
void keyPressed() {
  if (key=='9') scene=9;
  else if (key=='0') scene=0;
  else if (key=='1') scene=1;
  else if (key=='2') scene=2;
  else if (key=='3') scene=int (random(3,6));
  else if (key=='b'||key=='B') scene=0;
  else if(key=='m' || key=='M') scene=4;
  else if(key=='n' || key=='N') scene=5;
  else if(key=='v'||key=='V') scene=6;
  else if (key=='c'|| key=='C') scene=7;
  else if(key=='q' || key=='Q') scene=8;
  else if(key=='w') scene=9;
}