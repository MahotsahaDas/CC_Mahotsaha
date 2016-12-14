function Bullets(x,y){
  this.x=x;
  this.y= y;
  this.r=8;
  this.toDelete=false;
  
  this.show=function(){
    fill(25,150,230);
    
    ellipse(this.x,this.y,this.r*2,this.r*2);
    
    
  }
  this.evaporate = function(){
    this.toDelete=true;
    
  }
  this.hits=function(opponent){
    var d= dist(this.x,this.y,opponent.x,opponent.y);
    if (d< this.r + opponent.r){
      return true;
    }
    else {return false;}
    
  }

this.move=function(){
      
      this.y-=5;
    }
}    