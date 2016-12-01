function Flower(x,y){
  this.x=x;
  this.y= y;
  this.r=30;
  
  this.show=function(){
    fill(225,150,30);
    
    ellipse(this.x,this.y,this.r*2,this.r*2);
    
  }
  
}