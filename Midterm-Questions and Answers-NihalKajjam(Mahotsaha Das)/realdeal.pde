PImage img, img2, img3, img4, img5,img6;
int s1=750; 
int s2=700;
String state="jai";
PFont font,font1;
int timer=7000;
int c=0;
int st=0;
int scene=99;
float r= random(1,2);
float s=random(4,6);
float t=random(7,10);
String g="As a person puts on new garments, giving up old ones,the soul similarly accepts new material bodies,giving up the old and useless ones.You are an eternal conscious being, full knowledge and bliss.";
void setup() {
  size(750, 700);

  img=loadImage("Changing-Bodies.jpg");
  img2=loadImage("jai.jpg");
  img3=loadImage("forest.jpg");
  img4=loadImage("reincarnation.jpg");
  img5=loadImage("sankirtan.jpg");
  img6=loadImage("re2.jpg");
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
    
      text("click here to go to the next scene", width/2, 65);
      //st=c;
    
    //background (255);}
  }
  if (state=="Nitai-Gauranga") {
    scene1();
    }
    //image(img2,0,0);}
   else if (state=="Bramha-Jignyasa") {
    questions();
  } else if (state=="Dehinosmin") {
    Clothes();
  } else if ( state=="Vyasamsi") 
    {BBD();
    //text ("press B to back!", width/2, height-70);
  } else if (state=="NitaiGaurHaribol") {
    Sankirtan();}
  }
void scene1(){image(img2, 0, 0);
    fill(255);
    text("Click here to see what happens next", width/2,100);
    text("Disciple says-", width/2, 160);
    text("I have come here to inquire about the truth", width/2, 180);
    text("Guru says-please proceed", width/2, 220);}
    
void questions(){image(img2, 0, 0);
    fill(255);
    text("Click here to see what the Guru says",width/2,100);
    text ("Who am I?", width/2, 160);
    text("Why am I suffering", width/2, 180);
    text ("What is the cure for all my suffering?", width/2, 220);
    textSize(20);}
   // fill(255);
    //text("press 1 or 2 or 3 to find the answers to the respective questions", width/2, 65);}
void Clothes(){

  image(img, 0, 0);
    
    textSize(15);

    
   fill(#FAD3A4);
     rectMode(CENTER);
     rect(200, 650, 450, 90);
     fill(0);
     textSize(19);
     text("Click here to go to the next answer", 170,220);
     textSize(15);
     //text(g,200,635);}
    text("As a person puts on new garments, giving up old ones,", 200, 635);
    text(" the soul similarly accepts new material bodies,giving up", 200, 650);
    text("the old and useless ones.You are an eternal",200,665);
    text("conscious being, full knowledge and bliss.",200,680);
    fill(0);
    textSize(27);}
    //text ("press B to back!", width/2, height-70);}

void BBD(){image(img4, 0, 0);
    rectMode(CENTER);
    fill(#FCDCB5);
     rect(546, 450, 480, 110);
    fill(0);
    textSize(15);
    text("Click here to go to the next answer", 600,120);
    textSize(14);
    text("You are suffering because you midentify youserself as the body", 520, 420);
    text("As the embodied soul continuously passes, in this body, ", 520, 440);
    text(" from boyhood to youth to old age, the soul similarly ", 520, 460);
    text("passes into another body at death. ", 520, 480);
    text("A sober preson is not bewildered by such a change.", 520, 500);
    textSize(27);
    fill(255);}

void Sankirtan(){
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
    text("Click here to read again to read again!", width/2, 50);

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
  else if (key=='b'|| key=='B') scene=0;
}