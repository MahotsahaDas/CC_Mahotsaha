// Nihal Kajjam(Mahotsaha Das) Questions and answers.
PImage img, img2, img3, img4, img5,img6;
int s1=750; 
int s2=700;
String state="jai";
PFont font,font1;
int timer=7000;
int c=0;
int st=0;
int scene=99;
float r= int (random(1,2));
float s=int (random(4,6));
float t= int (random(7,10));
String g="As a person puts on new garments, giving up old ones,the soul similarly accepts new material bodies,giving up the old and useless ones.You are an eternal conscious being, full knowledge and bliss.";
void setup() {
  size(1100,900);

  img=loadImage("vyasamsi.jpg");
  img2=loadImage("Mahabharat.jpg");
  img3=loadImage("forest.jpg");
  img4=loadImage("samsara.jpg");
  img5=loadImage("sankirtan.jpg");
  img6=loadImage("janmamrtyu.png");
  font=loadFont("Baskerville-BoldItalic-48.vlw");
  font1=loadFont("Baskerville-BoldItalic-48.vlw");
  textFont(font);
  textFont(font1);
}
void draw() {
  c=millis();
  if (state=="jai") {


    image(img3, 0, 0);
    textAlign(CENTER);

    textSize(20);
    //textAlign(CENTER);


    text("A serious enquirer in search of a spiritual master", 390, 390);
    text("wanders the forest", 390, 420);
    textSize(25);
    fill(255);
    text("CLICK HERE TO SEE WHAT HAPPENS NEXT", width/2, 450);
  } 
  else if (state=="Haribol") {

    image(img2, 0, 0);
    fill(255);
    textSize(20);
    text("The Guru asks the inquisitive wanderer-", width/2, 100);
    text("Dear pilgrim, what brings you here?  ", width/2, 120);
    text("press 9 to see what the disciple said", width/2, 65);
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
  }
void scene1(){
    background(#4B4A42);
    image(img2, 0, 0);
    fill(255);
    //text("Click here to see what happens next", width/2,100);
    text("Disciple says-", width/2, 160);
    text("I have come here to inquire about the truth", width/2, 180);
    text("Guru says-please proceed", width/2, 220);
  text("press '0'to continue", width/2, 65);}
    
void questions(){
    background(#15140D);
    image(img2, 0, 0);
    fill(255);
    //text("Click here to see what the Guru says",width/2,100);
    text ("Who am I?", width/2, 160);
    text("Why am I suffering", width/2, 180);
    text ("What is the cure for all my suffering?", width/2, 220);
    //text("press 9 to see what the disciple said", width/2, 65);
    textSize(20);
   // fill(255);
    text("press 1 or 2 or 3 to find the answers to the respective questions", width/2, 65);}
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
    text("As a person puts on new garments, giving up old ones,the soul similarly", 820, 100);
    text("accepts new material bodies,giving up the old and useless ones.", 800, 120);
    text("You are an eternal conscious being, full knowledge and bliss.",800,140);
    text("Finding happiness in matter can be compared to looking for a diamond",820,160);
    text("in a bag of garbage, your real happiness lies in self realization.",820,180);
    fill(0);}
    //textSize(27);}
    //text ("press B to back!", width/2, height-70);}

void BBD(){
  background(#8AB7F5);
    image(img4, 0, 0);
    //rectMode(CENTER);
    fill(#FCDCB5);
     //rect(546, 450, 480, 110);
    fill(0);
    textSize(15);
    //text("Click here to go to the next answer", 600,120);
    textSize(14);
    textMode(CENTER);
    text("You are suffering because you midentify youserself as the body",760, 100);
    text("As the embodied soul continuously passes, in this body, ", 750, 120);
    text(" from boyhood to youth to old age, the soul similarly ", 740, 140);
    text("passes into another body at death. ", 740, 160);
    text("A sober preson is not bewildered by such a change.", 740, 180);
    textSize(27);
    fill(255);
    return;
  }

void Sankirtan(){
  background(#E3D130);
  image(img5, 0, 0);
  fill(0);
  textSize(15);
  text("Join a group of sanitly devotees of Lord Krishna. And loudly chant ", width/2, height-100);
  text("Hare Kishna Hare Krishna Krishna Krishna Hare Hare", width/2, height-80);
  text("Hare Rama Hare Rama Rama Rama Hare Hare", width/2, height-60);
  text("And study these scientific devotional scriptures like the Bhagavad Gita, Srimad Bhagavatam,", width/2, height-40);
  text("under a bonafide spiritual master.", width/2, height-20);
  text("Serving him and the devotees submissively with love", width/2, height-5);
    //textSize(27);
    //text("Click here to read again to read again!", width/2, 50);

}
void mousePressed() {
  //img3.clear();
  if (state=="jai") {
    state="Haribol";
  } else if (state=="Haribol") {
    state="Nitai-Gauranga";
  }
 else if(state=="Nitai-Gauranga"){state="Bramha-Jignyasa";}
 else if(state=="Bramha-Jignyasa") state="Dehinosmin";
  else if(state=="Dehinosmin") state="Vyasamsi";
  else if(state=="Vyasamsi") state="NitaiGaurHaribol";
  else if(state=="NitaiGaurHaribol") state="Bramha-Jignyasa";
  //textClear()}*/
}
void keyPressed() {
  if (key=='9') scene=9;
  else if (key=='0') scene=0;
  else if (key=='1') scene=1;
  else if (key=='2') scene=2;
  else if (key=='3') scene=3;
  else if (key=='b') scene=0;
}