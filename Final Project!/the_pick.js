function the_pick(){
  this.x=width/2; 
  this.show=function(){
   // fill(255,60,178);
    //rectMode(CENTER);
    //rect(this.x,height-20,20,60);
    image(paddle, this.x, height-60, 80, 80);
    
  }
  this.move=function(dir){
    this.x +=dir*20;
  }
}