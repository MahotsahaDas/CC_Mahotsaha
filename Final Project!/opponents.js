function Opponent(x,y){
  this.x=x;
  this.y= y;
  this.r=20;
  this.xdir=.09;
  this.toDelete=false;
  
  this.isHit= function(){
    this.toDelete=true;
  }
  this.move= function(){
    this.x=this.x+this.xdir;
    
  }
  this.shiftDown=function(){
    this.xdir*=-1;
    this.y +=this.r;
  }
  
  this.show=function(){
    //fill(225,150,30,150);
    
    //ellipse(this.x,this.y,this.r*2,this.r*2);
    image(thespaceship, this.x,this.y, 100,100);
  }
 
  
}